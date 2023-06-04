<?php
error_reporting(E_ERROR | E_PARSE);
 require_once("ocds.php");
 
 $ocdsObject = new ocds();
 
 $servername = "localhost";
 $username = "root";
 $password = "";
 $dbname = "lkcentrixreports";

 // Create connection
 $conn = new mysqli($servername, $username, $password, $dbname);

 // Check connection
 if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error); 
 }
 echo "Connected successfully\n";
 
 $response = $ocdsObject->getAll(1,1000,"2020-01-01","2023-01-20");
 foreach($response->releases as $release){
	
	
	 if (is_object($release->tender)){
		 $tender = json_encode($release->tender);
	 }else{
		 $tender = "";
	 }
	 
	$sql = "SELECT ocid FROM tender where ocid='".$release->ocid."';";
	$result = $conn->query($sql);
	if ($result->num_rows == 0) {
		$sql = "INSERT INTO tender (ocid, id, date, initiationtype, tender) VALUES ('".$release->ocid."','".$release->id."','".$release->date."','".$release->initiationType."','".$tender."')";
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
			
		  $insert = "Insert into ocdsreleases (ocid,tid,date,tenderid,title,status,mainProcurementCategory,description,eligibilityCriteria,amount,currency,startDate,endDate) 
		  values('".mysql_escape_string($row["ocid"])."','".mysql_escape_string($awardsTender->id)."','".mysql_escape_string($awardsTender->date)."'
		  ,'".mysql_escape_string($awardsTender->tender->id)."','".mysql_escape_string($awardsTender->tender->title)."','".mysql_escape_string($awardsTender->tender->status)."'
		  ,'".mysql_escape_string($awardsTender->tender->mainProcurementCategory)."','".mysql_escape_string($awardsTender->tender->description)."','".mysql_escape_string($awardsTender->tender->eligibilityCriteria)."'
		  ,'".mysql_escape_string($awardsTender->tender->value->amount)."','".mysql_escape_string($awardsTender->tender->value->currency)."','".mysql_escape_string($awardsTender->tender->tenderPeriod->startDate)."'
		  ,'".mysql_escape_string($awardsTender->tender->tenderPeriod->endDate)."');";
		  
		  if ($conn->query($insert) === TRUE) {
			  $last_id = $conn->insert_id;
			  echo "New record ocdsreleases created successfully. Last inserted ID is: " . $last_id."\n";
			}
			
		$docs = $awardsTender->tender->documents;
		foreach($docs as $doc){
			 $insert = "Insert into ocdsreleasesdocs (ocid,id,url,title,dateModified) values ('".mysql_escape_string($row["ocid"])."','".mysql_escape_string($doc->id)."','".mysql_escape_string($doc->url)."','".mysql_escape_string($doc->title)."','".mysql_escape_string($doc->dateModified)."');";
			if ($conn->query($insert) === TRUE) {
			  $last_id = $conn->insert_id;
			  echo "New record ocdsreleasesdocs created successfully. Last inserted ID is: " . $last_id."\n";
			}
			
		}
	 }
		 if(count($awardsTender->awards) > 0){
			 foreach($awardsTender->awards as $award){
				 foreach($award->suppliers as $supplier){
					 $insert = "Insert into tenderaward (ocid,name) values ('".mysql_escape_string($row["ocid"])."','".mysql_escape_string($supplier->name)."')";
					if ($conn->query($insert) === TRUE) {
					  $last_id = $conn->insert_id;
					  echo "New record tenderaward created successfully. Last inserted ID is: " . $last_id."\n";
					}
				 }
			 }
			 
		 }
	 }
  
} 
$conn->close();
// print_r($ocdsObject->findById("ocds-0E7232F7-67EC-42BD-B081-3370171F20B7"));
?>