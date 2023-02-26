<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client extends CI_Controller {

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
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}
		$this->load->model("User_model");
		$this->load->model("Client_model");
		$this->load->model("SearchHistory_model");
		$this->reports = $this->Report_model->list_reports();
		$this->reports_type = $this->Report_type_model->list_reports_type();	
	}
	 
	
	public function create(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}	

		if(!$this->session->userdata('isadmin')){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}
		
		$hasAccess = $this->checkpermission->hasAccess($this->session->userdata('usermenu'),$this->session->userdata('submenu'),'role','create');

		if($hasAccess->hasAccessToController === true && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}else if($hasAccess->hasAccessToController === false && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}
		
		$data['errorMessage'] = "";
		$data['clientList'] = array();
		$data['clientList'] = $this->Client_model->get();
		$data["reports_type"] = $this->reports_type;
		$data["reports"] = $this->reports;
		
		$this->form_validation->set_rules('clientname', 'Name', 'required');
		$this->form_validation->set_rules('clientemail', 'Email', 'required');
		$this->form_validation->set_rules('clientaddress', 'Address', 'required');
		$this->form_validation->set_rules('clientcontact', 'Contact', 'required');
		
		if ($this->form_validation->run() != FALSE){	


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
				$data['errorMessage'] = 'Sorry Recaptcha Unsuccessful!!';
				$data["content"]="client/create";
				$this->load->view('site',$data);
			} else {
			
				$roleData = array(
				"client_Name"=>$this->input->post('clientname'),
				"client_Email"=>$this->input->post('clientemail'),
				"client_Address"=>$this->input->post('clientaddress'),
				"client_Contact"=>$this->input->post('clientcontact')
				);
				
				$createResponse = $this->Client_model->create($roleData);
				if($createResponse){
					$data['errorMessage'] = "Client successfully created";
					$data["content"]="client/create";
					$this->load->view('site',$data);	
				}else{
					$data['errorMessage'] = "Client already exist"; 
					$data["content"]="role/create";
					$this->load->view('client',$data);	
				}
			}
		} else {
			$data["content"]="client/create";
			$this->load->view('site',$data);	
		}	
	}
	
	public function update(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		if(!$this->session->userdata('isadmin')){
			 redirect('user/login');
		}		
		
		
		$id = $this->input->post('id');
		$updateData = array(
		 "client_Name" =>$this->input->post('clientname'), 
		 "client_Email" =>$this->input->post('clientemail'), 
		 "client_Address" =>$this->input->post('clientaddress'), 
		 "client_Contact" =>$this->input->post('clientcontact'),
		 "isactive" =>$this->input->post('isactive')
		);
		if($response > 0){
			print "error";
		}else{
			$response = $this->Client_model->update($updateData,$id);
			if($response){
				print "success";
			}else{
				print "error";
			}
		}
		
	}
	
	public function viewusers(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}	
		if(!$this->session->userdata('isadmin')){
			 redirect('user/login');
		}			
		/*
		$hasAccess = $this->checkpermission->hasAccess($this->session->userdata('usermenu'),$this->session->userdata('submenu'),'client','view');

		if($hasAccess->hasAccessToController === true && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}else if($hasAccess->hasAccessToController === false && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}
		*/
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}
		
		$data['errorMessage'] = "";
		$data['consumerList'] = $this->User_model->getByClientId($this->uri->segment(3));
		$data["reports_type"] = $this->reports_type;
		$data["reports"] = $this->reports;
		
		$data["content"]= "client/view";
		$this->load->view('site',$data);
	} 
	
	public function getbyid(){
		
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		
		if(!$this->session->userdata('isadmin')){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}
		
		$response = $this->Client_model->getById($this->input->post('id'));
		if(count($response)==0){
			print "error";
		}else{
			print json_encode($response);
		}
	}
	
	public function gettotalbyclient(){
		
		
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		
		if(!$this->session->userdata('isadmin')){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}

		$client = $this->input->post('cid');
		$data["reports_type"] = $this->reports_type;
		$data["reports"] = $this->reports;
		$data["title"] = "Total Count Per Report For Last 7 Days";
		$data["cid"] = $this->input->post('cid');
		$sdate = "";
		$edate = "";
		$data["title"] = "Total Count Per Report For Last 7 Days";
		if($this->input->post("start-date") && $this->input->post("end-date")){
			$sdate = $this->input->post("start-date")." 00:00:00";
			$edate = $this->input->post("end-date")." 23:59:59";
			$data["title"] = "Total Count Per Report between ".$this->input->post("start-date")." and ".$this->input->post("end-date");
		}
		
		
		$data["reportCount"] = $this->SearchHistory_model->getTotalByClient($client,$sdate,$edate);
		
		$data["procurementCount"] = 0;
		$data["indigentCount"] = 0;
		$data["traceCount"] = 0;
		
		$data["userReportInfo"]["detail"] = array();
		foreach($data["reportCount"] as $reportCountKey => $reportCountVal){
			
			if($reportCountVal->report == "indigentreport"){
				$data["userReportInfo"]["detail"][$reportCountVal->user]["indigentreport"]+= $reportCountVal->totalCount;
				$data["indigentCount"] += $reportCountVal->totalCount;
			}else if($reportCountVal->report == "procurementreport"){
				$data["userReportInfo"]["detail"][$reportCountVal->user]["procurementCount"]+= $reportCountVal->totalCount;
				$data["procurementCount"] += $reportCountVal->totalCount;
			}else if($reportCountVal->report == "tracereport"){
				$data["userReportInfo"]["detail"][$reportCountVal->user]["traceCount"]+= $reportCountVal->totalCount;
				$data["traceCount"] += $reportCountVal->totalCount;
			}
			
			$data["totalStats"] += $reportCountVal->totalCount;
			
		}
		
		$data["content"]= "client/viewstats";
		$this->load->view('site',$data);
	}
}
