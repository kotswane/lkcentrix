<?php
error_reporting(E_ERROR | E_PARSE);
 require_once("ocds.php");
 
 $ocdsObject = new ocds();
 
 $servername = "localhost";
 $username = "dbuser";
 $password = "m2n1shlko123";
 $dbname = "lkcentrixreports";

 // Create connection
 $conn = new mysqli($servername, $username, $password, $dbname);

 // Check connection
 if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error); 
 }
 echo "Connected successfully\n";
 
 $response = $ocdsObject->getAll(1,100000,"2020-01-01","2023-01-20");
 foreach($response->releases as $release){
	
	
	 if (is_object($release->tender)){
		 $tender = json_encode($release->tender);
	 }else{
		 $tender = "";
	 }
	 
	$sql = "SELECT ocid FROM tender where ocid='".$release->ocid."';";
	$result = $conn->query($sql);
	if ($result->num_rows == 0) {
		$sql = "INSERT INTO tender (ocid, id, date, initiationtype, tender) VALUES ('".mysqli_real_escape_string($conn,$release->ocid)."','".mysqli_real_escape_string($conn,$release->id)."','".mysqli_real_escape_string($conn,$release->date)."','".mysqli_real_escape_string($conn,$release->initiationType)."','".mysqli_real_escape_string($conn,$tender)."')";
		if ($conn->query($sql) === TRUE) {
		  $last_id = $conn->insert_id;
		  echo "New record tender created successfully. Last inserted ID is: " . $last_id."\n";
		} else {
		  echo "Error: " . $sql . "<br>" . $conn->error."\n";
		}
	}
 }
 
 
$sql = "SELECT ocid FROM tender";
$result = $conn->query($sql);
print "Total records: ".$result->num_rows."\n";
if ($result->num_rows > 0) {
	
  while($row = $result->fetch_assoc()) {
   
	 $awardsTender = $ocdsObject->findById($row["ocid"]);
	 
	 if($awardsTender->tender){
			
		$sql = "SELECT ocid FROM ocdsreleases where ocid='".$row["ocid"]."';";
		$result = $conn->query($sql);
		if ($result->num_rows == 0) {
			  $insert = "Insert into ocdsreleases (ocid,tid,date,tenderid,title,status,mainProcurementCategory,description,eligibilityCriteria,amount,currency,startDate,endDate) 
			  values('".mysqli_real_escape_string($conn,$row["ocid"])."','".mysqli_real_escape_string($conn,$awardsTender->id)."','".mysqli_real_escape_string($conn,$awardsTender->date)."'
			  ,'".mysqli_real_escape_string($conn,$awardsTender->tender->id)."','".mysqli_real_escape_string($conn,$awardsTender->tender->title)."','".mysqli_real_escape_string($conn,$awardsTender->tender->status)."'
			  ,'".mysqli_real_escape_string($conn,$awardsTender->tender->mainProcurementCategory)."','".mysqli_real_escape_string($conn,$awardsTender->tender->description)."','".mysqli_real_escape_string($conn,$awardsTender->tender->eligibilityCriteria)."'
			  ,'".mysqli_real_escape_string($conn,$awardsTender->tender->value->amount)."','".mysqli_real_escape_string($conn,$awardsTender->tender->value->currency)."','".mysqli_real_escape_string($conn,$awardsTender->tender->tenderPeriod->startDate)."'
			  ,'".mysqli_real_escape_string($conn,$awardsTender->tender->tenderPeriod->endDate)."');";
			  
			  if ($conn->query($insert) === TRUE) {
				  $last_id = $conn->insert_id;
				  echo "New record ocdsreleases created successfully. Last inserted ID is: " . $last_id."\n";
				}
		}		
			
			
		$docs = $awardsTender->tender->documents;
		foreach($docs as $doc){
				$sql = "SELECT ocid FROM ocdsreleasesdocs where ocid='".$row["ocid"]."';";
				$result = $conn->query($sql);
				if ($result->num_rows == 0) {
					 $insert = "Insert into ocdsreleasesdocs (ocid,id,url,title,dateModified) values ('".mysqli_real_escape_string($conn,$row["ocid"])."','".mysqli_real_escape_string($conn,$doc->id)."','".mysqli_real_escape_string($conn,$doc->url)."','".mysqli_real_escape_string($conn,$doc->title)."','".mysqli_real_escape_string($conn,$doc->dateModified)."');";
					if ($conn->query($insert) === TRUE) {
					  $last_id = $conn->insert_id;
					  echo "New record ocdsreleasesdocs created successfully. Last inserted ID is: " . $last_id."\n";
					}
				}
				
		}
		
	 }
		 if(count($awardsTender->awards) > 0){
			 foreach($awardsTender->awards as $award){
				 foreach($award->suppliers as $supplier){
					$sql = "SELECT ocid FROM tenderaward where ocid='".$row["ocid"]."';";
					$result = $conn->query($sql);
					if ($result->num_rows == 0) { 
						$insert = "Insert into tenderaward (ocid,name) values ('".mysqli_real_escape_string($conn,$row["ocid"])."','".mysqli_real_escape_string($conn,$supplier->name)."')";
						if ($conn->query($insert) === TRUE) {
						  $last_id = $conn->insert_id;
						  echo "New record tenderaward created successfully. Last inserted ID is: " . $last_id."\n";
						}
					}
				 }
			 }
			 
		 }
	 }
  
} 
$conn->close();
// print_r($ocdsObject->findById("ocds-0E7232F7-67EC-42BD-B081-3370171F20B7"));
?>