<?php 
     class ocds {
		
	   private $client;
	   private $urlAll;
	   private $urlFindById;
	   
	   function __construct() {
		   $this->urlAll = "https://ocds-api-ocds-dev.azurewebsites.net/api/OCDSReleases";
		   $this->urlFindById = "https://ocds-api-ocds-dev.azurewebsites.net/api/OCDSReleases/release";
	   }
	   
	   public function getAll($pageNumber,$pageSize,$dateFrom,$dateTo) {
		 
		 $ch = curl_init();
		 curl_setopt($ch, CURLOPT_URL, $this->urlAll."?PageNumber=".$pageNumber."&PageSize=".$pageSize."&dateFrom=".$dateFrom."&dateTo=2022-01-15"); 
		 curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		 curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));		 
		 $output = curl_exec($ch); 
		 curl_close($ch);      
		 $status= json_decode($output);		
 
		 return $status;
	   }
	   
	   public function findById($ocid){
		   
		 $ch = curl_init(); 
		 curl_setopt($ch, CURLOPT_URL, $this->urlFindById."/".$ocid); 
		 curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		 curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));		 
		 $output = curl_exec($ch); 
		 curl_close($ch);      
		 $status= json_decode($output);		 
		 return $status;
	   }  
	   
	}
?>