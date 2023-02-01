<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	 
	public function  __construct(){
		parent::__construct();
		
		$this->load->model("Client_model");
		$this->load->model("Role_model");
		$this->load->model("Report_model");
		$this->load->model("User_model");
		$this->load->model("UserRole_model");
		$this->load->model("RoleResource_model");
		$this->load->model("RoleResourceReportType_model");
		$this->reports = $this->Report_model->list_reports();
		$this->reports_type = $this->Report_type_model->list_reports_type();	
	}
	
	
	public function index()
	{
			//int_r(base_url()."wsdl/XDSConnectWS.wsdl");
			//e();
			$data['errorSession'] = "username and password required"; 
			$this->load->view('login',$data);
	}
	
	
	
	public function login()
	{
		$data['logoutSession'] = ""; 
		$data['errorSession'] = "";
		
		$this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required'); 

		
		if ($this->form_validation->run() != FALSE)
		{		
				$recaptchaResponse = trim($this->input->post('g-recaptcha-response'));
				$userIp=$this->input->ip_address();
				$secret = $this->config->item('google_secret');
				$url="https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$recaptchaResponse."&remoteip=".$userIp;
		 
				$ch = curl_init(); 
				curl_setopt($ch, CURLOPT_URL, $url); 
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
				$output = curl_exec($ch); 
				curl_close($ch);      
				 
				$status= json_decode($output, true);

				if ($status['success'] == false){
					$data['errorSession'] = 'Sorry Recaptcha Unsuccessful!!';
					$this->load->view('login',$data);
				}else {
					
				
					$login = $this->User_model->login(array("username"=>$this->input->post("username"),"password"=>$this->input->post("password")));
					if($this->User_model->login(array("username"=>$this->input->post("username"),"password"=>$this->input->post("password"))) == -1){
						$data['errorSession'] = "Invalid username and password"; 
						$this->load->view('login',$data);
					}else{
						
						if($login[0]->isactive == 0){
							$data['errorSession'] = "Inactive account"; 
							$this->load->view('login',$data);
						}else{
							$client = $this->mysoapclient->getClient();
							$loginRequest = array("strUser"=>"LKC_LIVEWS","strPwd"=>"Aplitec01*$");
							
							$loginResponse = $client->Login($loginRequest);

							if ($loginResponse->LoginResult == "UserNotFound" || $loginResponse->LoginResult == "NotAuthenticated"){
								$data['errorSession'] = "Invalid username and password"; 
								$this->load->view('login',$data);
							}else{
								
								$loggedInUserRoles=$this->UserRole_model->getByUserId($login[0]->id);

								if(count($loggedInUserRoles)==0){
									$data['errorSession'] = "You do not currently have assigned to your profile"; 
									$this->load->view('login',$data);								
								}else{
								
									$loggedInUserRolesList="";
									foreach($loggedInUserRoles as $loggedInUserRole){
										$loggedInUserRolesList.= "'".$loggedInUserRole->roleid."',";
									}
									
									$loggedInUserRolesList = substr($loggedInUserRolesList,0,strlen($loggedInUserRolesList)-1);
									
									$resourceListInArray = $this->RoleResource_model->getRoleResourceInList($loggedInUserRolesList);
									foreach($resourceListInArray as $resourceListInArr){
										$resourceListInArrMenu.= "'".$resourceListInArr->resourceid."',";
									}
									
									$resourceListInArrMenu = substr($resourceListInArrMenu,0,strlen($resourceListInArrMenu)-1);
									$loggeinUserMenu = $this->Report_model->getReportById($resourceListInArrMenu);
									
								
									
									foreach($loggeinUserMenu as $loggeinUserMenuInArr){
										$resourceListInArrSubMenu.= "'".$loggeinUserMenuInArr->report_id."',";
									}									
									
									$resourceListInArrSubMenu = substr($resourceListInArrSubMenu,0,strlen($resourceListInArrSubMenu)-1);
									
									$loggeinUserSubMenuId = $this->RoleResourceReportType_model->getByReportTypeIdReportIdRoleIdRows($resourceListInArrSubMenu,$loggedInUserRolesList);
									
									foreach($loggeinUserSubMenuId as $loggeinUserSubMenuIkkey){
										$loggeinUserSubMenuDataIds .= "'".$loggeinUserSubMenuIkkey->reporttypeid."',";
									}									
									
									$loggeinUserSubMenuDataIds =  substr($loggeinUserSubMenuDataIds,0,strlen($loggeinUserSubMenuDataIds)-1);
									
									$loggeinUserSubMenuData = $this->Report_type_model->getById($loggeinUserSubMenuDataIds);

									$data = array('id'=>$login[0]->username,'site'=>'tracing portal prod');
									$responseApi = $this->redisclient->generate($data);
									
									if($responseApi->status == "success"){
										$this->session->set_userdata(array(
										'username' => $this->input->post("username"),
										'isloggedin' => true,
										'tokenId' => $loginResponse->LoginResult,
										'userId' => $login[0]->id,
										'isactive'=>$login[0]->isactive,
										'usermenu'=>$loggeinUserMenu,
										'submenu'=>$loggeinUserSubMenuData));
										redirect('disclaimer');
									}else {
										$data['errorSession'] = "You have an active session in another computer, please logout and login here"; 
										$this->load->view('login',$data);
									}
								}	
							}
						}	
					}
				}
				
		}
		else
		{
				$data['errorSession'] = "Username and Password required";
				if ($this->session->userdata('tokensession')){

						$datax = array('id'=>$this->session->userdata('username'),'site'=>'tracing portal prod');
						$data['errorSession'] = $this->session->userdata('tokensession');
						$response = $this->redisclient->remove($datax);
						$this->session->sess_destroy();
						$this->load->view('login',$data);
				} else {
					$this->load->view('login',$data);
				}
		}
	
	}
	
	public function create(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}		
		
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}
		
		$data['errorMessage'] = "";
		$data['clientlist'] = $this->Client_model->get();
		$data['rolelist'] = $this->Role_model->get();
		$data["reports_type"] = $this->reports_type;
		$data["reports"] = $this->reports;
		
		$this->form_validation->set_rules('firstname', 'firstname', 'required');
        $this->form_validation->set_rules('surname', 'surname', 'required'); 
		$this->form_validation->set_rules('email', 'email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required'); 
        $this->form_validation->set_rules('contact', 'contact', 'required'); 
        $this->form_validation->set_rules('clientid', 'clientid', 'required'); 
		
		
		if ($this->form_validation->run() != FALSE)
		{		
				$recaptchaResponse = trim($this->input->post('g-recaptcha-response'));
				$userIp=$this->input->ip_address();
				$secret = $this->config->item('google_secret');
				$url="https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$recaptchaResponse."&remoteip=".$userIp;
		 
				$ch = curl_init(); 
				curl_setopt($ch, CURLOPT_URL, $url); 
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
				$output = curl_exec($ch); 
				curl_close($ch);      
				 
				$status= json_decode($output, true);

				if ($status['success'] == false){
					$data['errorSession'] = 'Sorry Recaptcha Unsuccessful!!';
					$this->load->view('login',$data);
				}else {
					
					$roleData = array(
					"username"=>$this->input->post('email'),
					"password"=>$this->input->post('password'),
					"name"=>$this->input->post('firstname'),
					"surname"=>$this->input->post('surname'),
					"contact"=>$this->input->post('contact'),
					"clientid"=>$this->input->post('clientid'),
					);
				
						$createResponse = $this->User_model->create($roleData);
						if($createResponse > 0){
							$data['errorMessage'] = "User Role successfully created";
							$data['consumerList'] = $this->User_model->getJoint();
							$data["content"]= "user/create";
							$this->load->view('site',$data);	
						}else{
							$data['errorMessage'] = "user already exist"; 
							$data['consumerList'] = $this->User_model->getJoint();
							$data["content"]= "user/create";
							$this->load->view('site',$data);	
						}
				}
				
		} else {
			$data['consumerList'] = $this->User_model->getJoint();
			$data["content"]= "user/create";
			$this->load->view('site',$data);
		}
		
	}
	
	public function update(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}		
		
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}
		
		$postdata = explode("_",$this->input->post("form_data"));
		$data['errorMessage'] = "";
		$data['clientlist'] = $this->Client_model->get();

		

		$user = $this->User_model->getById($user[0]);
		$data['consumerList'] = $this->User_model->getJoint();
		$data["content"]= "user/update";
		$this->load->view('site',$data);
		
		
	}
	
	public function logout()
	{
		$datax = array('id'=>$this->session->userdata('username'),'site'=>'tracing portal prod');
		$response = $this->redisclient->remove($datax);
		$data['logoutSession'] = "";
		$data['errorSession'] = "Successfully logged out";
		$this->session->sess_destroy();
		$this->load->view('login',$data);
	}
}
