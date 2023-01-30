<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lkcentrixreportservice extends CI_Controller {

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
	
	public function  __construct(){
		parent::__construct();
		if(!$this->session->userdata('username')){
			 redirect('user/login');
		}
		
		
		$IsTicketValid = array("XDSConnectTicket"=>$this->session->userdata('tokenId'));
		
		$this->client = $this->mysoapclient->getClient();
		
		if($this->client->IsTicketValid($IsTicketValid) != true){
			$this->session->set_userdata(array('tokensession' =>'Session expired, please login again'));
			redirect('user/login');
		}
	 }
	 
	public function index(){
		$data["successFlash"] = "";
		$data["errorFlash"] = "";
		$data["infoFlash"] = "";
		
		$data["content"] = "dashboard/home";
		$this->load->view('site',$data);
	}
	
	public function idsearch(){
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		
		
		if ($this->input->post("postback")=="post"){
			$response = $this->client->ConnectConsumerMatch(array(
			'IdNumber'=>$this->input->post('idNumber'),
			'ConnectTicket'=>$this->session->userdata('tokenId'),
			'ProductId' => 2,
			'EnquiryReason' => 'Consumer Trace'
			));
			
			$xml = simplexml_load_string($response->ConnectConsumerMatchResult);
			var_dump($xml->ConsumerDetails);
			//die();
			$ConnectGetBonusSegments = $this->client->ConnectAddressIDMatch(array(
			"ConnectTicket"=>$this->session->userdata('tokenId'),
			"YourReference"=>$xml->ConsumerDetails->Reference,"ConsumerAddressID" => 0));
			
			$xml = simplexml_load_string($ConnectGetBonusSegments->ConnectAddressIDMatchResult);
			var_dump($xml);
			die();
			//To view your returned results, use: 
			echo "<br><br>resultXML[".htmlspecialchars($response->ConnectConsumerMatchResult)."]<br><br>"; 
			
			if($response->ConnectConsumerMatchResult == 'Invalid Product Supplied'){
				$data['errorMessage'] = $response->ConnectConsumerMatchResult; 
			}
			
			$data["content"] = "tracereport/id-search";
		}else{
			$data["content"] = "tracereport/id-search";
		}
		
		$this->load->view('site',$data);
	}
	
	public function addresssearch(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "tracereport/addresssearch";
		$this->load->view('site',$data);
		
	}
	
	public function telephonesearch(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "tracereport/telephone-search";
		$this->load->view('site',$data);
		
	}
	
	public function fuzzysearch(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "tracereport/fuzzy-search";
		$this->load->view('site',$data);
		
	}
	
	public function individualsearch(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "deedreport/individual-search";
		$this->load->view('site',$data);
		
	}
	
	public function idverification(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "verificationreport/id-verification";
		$this->load->view('site',$data);
		
	}
	
	public function idphotoverification(){
		
		$data["successFlash"] = "";
		$data["infoFlash"] = "";
		$data["errorFlash"] = "";
		$data["errorMessage"] = "";
		$data["consumerList"] = array();
		$data["content"] = "verificationreport/idphoto-verification";
		$this->load->view('site',$data);
		
	}
}
