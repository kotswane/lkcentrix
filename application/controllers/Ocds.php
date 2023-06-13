<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ocds extends CI_Controller {

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
	
	private $client;
	private $reports;
	private $reports_type;
	
	public function  __construct(){
		parent::__construct();
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}
		$this->reports = $this->Report_model->list_reports();
		$this->reports_type = $this->Report_type_model->list_reports_type();	
		$this->load->model("Ocds_model");
	 }


	public function find(){
		if (isset($_GET['term'])) {
			$results = $this->Ocds_model->getByNameLike($_GET['term']);
			$companyNames = array();
			foreach($results as $result){
				$companyNames[] = $result->name;
			}
			echo json_encode($companyNames);
		}
	}

	public function search(){
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		
		$hasAccess = $this->checkpermission->hasAccess($this->session->userdata('usermenu'),$this->session->userdata('submenu'),'ocds','search');

		if($hasAccess->hasAccessToController === true && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}else if($hasAccess->hasAccessToController === false && $hasAccess->hasAccessToFunction === false){
			$data["content"] = 'permissions/access_denied';
			return $this->load->view('site',$data);
		}
		
		
		if(!$this->session->userdata('agreed_tc_and_c')){
			 redirect('user/logout');
		}		
		$data = array('id'=>$this->session->userdata('username'),'site'=>'tracing portal prod');
		$response = $this->redisclient->request($data);

		if($response->status != "success"){
			$this->session->set_userdata(array('tokensession' => 'Session expired, please login again'));
			redirect('user/login');
		}
		
		
		$data["reports_type"] = $this->reports_type;
		$data["reports"] = $this->reports;		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["doc"] = array();
		$data["details"] = array();
		
		if ($this->input->post("postback")=="post"){
			
			$results = $this->Ocds_model->getByName($this->input->post('companyname'));
			if(count($results) > 0){
				foreach($results as $result){
					$data["doc"][] = $this->Ocds_model->getDocsById($result->ocid);
					$data["details"] = $this->Ocds_model->getReleaseById($result->ocid);
				}
									
			}else{
				$data["errorMessage"] = "Record not found";
			}
			
			
		}
		$data["content"] = "ocds/search";
		$this->load->view('site',$data);
		
	}
	
	//
}
