<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Trace Report</title>
</head>
<body>
<section class="content-header">
<?php 

		if($report->SubscriberInputDetails->SubscriberName){
			?>
				<h1><?php echo $report->SubscriberInputDetails->SubscriberName;?></h1>
			<?php
		}
	?>
</section>
<div class="content">
    <div class="box">
        <div class="box-header with-border">
           	<?php
			
				if($report->SubscriberInputDetails->EnquiryType =='Consumer Telephone Trace'){
					$backMenu = "tracereport/idsearch";
					?>
						<h3 class="box-title">&nbsp;&nbsp;<?php echo $report->SubscriberInputDetails->EnquiryType." Report";?></h3>
					<?php
				}
			?>
			
           <div class="box-tools pull-right">
		   <?php
				if($report->SubscriberInputDetails->EnquiryType =='Consumer Telephone Trace'){
					$backMenu = "tracereport/telephonesearch";
					?>
				<div>
					 <a href="<?php echo site_url();?>/tracereport/downloadidreport">
						<img src="<?php echo base_url();?>dist/img/pdf_icon.png" height="35" width="35"/>
						<span>Download PDF Document</span>
					</a>
				</div>		
			<?php
				}
				if($report->SubscriberInputDetails->EnquiryType =='Consumer Easy Trace'){?>
				<div>
					 <a href="<?php echo site_url();?>/tracereport/downloadidreport">
						<img src="<?php echo base_url();?>dist/img/pdf_icon.png" height="35" width="35"/>
						<span>Download PDF Document</span>
					</a>
				</div>		
			<?php
				}
				if($report->SubscriberInputDetails->EnquiryType =='Consumer Address Trace'){
					$backMenu = "tracereport/addresssearch";
					?>
				<div>
					 <a href="<?php echo site_url();?>/tracereport/downloadidreport">
						<img src="<?php echo base_url();?>dist/img/pdf_icon.png" height="35" width="35"/>
						<span>Download PDF Document</span>
					</a>
				</div>		
			<?php
				}
				if($report->SubscriberInputDetails->EnquiryType =='Consumer Trace'){
					$backMenu = "tracereport/idsearch";
				?>
				<div>
					 <a href="<?php echo site_url();?>/tracereport/downloadidreport">
						<img src="<?php echo base_url();?>dist/img/pdf_icon.png" height="35" width="35"/>
						<span>Download PDF Document</span>
					</a>
				</div>
				<?php 
			} ?>
            </div>
			
			<div class="pull-left">
				<a class="btn btn-primary" href="<?php echo site_url()."/".$backMenu;?>">
				<li class="fa fa-step-backward">&nbsp;&nbsp;back&nbsp;&nbsp;</li>
				</a>
			</div>

        </div>
		
		
        

        <div class="box-body no-padding">
			<div class="panel panel-primary">
				<div class="panel-heading">Enquiry Input Details</div>
				<div class="panel-body">
					<div class="col">
					  <table class="table table-striped">
						<tr>
							<td>Enquiry Date</td>
							<td><?php echo str_ireplace("t"," ",(substr($report->SubscriberInputDetails->EnquiryDate,0,strpos($report->SubscriberInputDetails->EnquiryDate,"."))));?></td>
						</tr>
						<tr>
							<td>Enquiry Type</td>
							<td><?php echo $report->SubscriberInputDetails->EnquiryType;?></td>
						</tr>
						<tr>
							<td>Subscriber Name</td>
							<td><?php echo $report->SubscriberInputDetails->SubscriberName;?></td>
						</tr>
						<tr>
							<td>User Name</td>
							<td><?php echo  $this->session->userdata('fullname');?></td>
						</tr>
						<tr>
							<td>Enquiry Input</td>
							<td><?php echo $report->SubscriberInputDetails->EnquiryInput;?></td>
						</tr>
					  </table>
					</div>
				</div>
			  </div>

               <div class="panel panel-primary">
                <div class="panel-heading">Personal Details Summary</div>
                <div class="panel-body">
                    <div class="col">
						<table class="table table-striped">
							<tr>
								<td><strong>Personal</strong></td>
								<td><strong>Contact</strong></td>
								<td><strong>Employment</strong></td>
							</tr>
							<tr>
								<td>
									<table class="table table-striped">
										<tr>
											<td>Title</td>
											<td><?php echo (is_object($report->ConsumerDetail->TitleDesc)?"":$report->ConsumerDetail->TitleDesc);?></td>
										</tr>
										<tr>
											<td>ID No</td>
											<td><?php echo (is_object($report->ConsumerDetail->IDNo)?"":$report->ConsumerDetail->IDNo);?></td>
										</tr>										
										<tr>
											<td>Gender</td>
											<td><?php echo (is_object($report->ConsumerDetail->Gender)?"":$report->ConsumerDetail->Gender);?></td>
										</tr>
										<tr>
											<td>Passport or 2nd ID No</td>
											<td><?php echo (is_object($report->ConsumerDetail->PassportNo)?"":$report->ConsumerDetail->PassportNo);?></td>
										</tr>
										<tr>
											<td>Date of Birth</td>
											<td><?php echo (is_object($report->ConsumerDetail->BirthDate)?"":$report->ConsumerDetail->BirthDate);?></td>
										</tr>
										<tr>
											<td>Marital Status</td>
											<td><?php echo (is_object($report->ConsumerDetail->MaritalStatusDesc)?"":$report->ConsumerDetail->MaritalStatusDesc);?></td>
										</tr>
										<tr>
											<td>First Name</td>
											<td><?php echo (is_object($report->ConsumerDetail->FirstName)?"":$report->ConsumerDetail->FirstName);?></td>
										</tr>
										<tr>
											<td>Second Name</td>
											<td><?php echo (is_object($report->ConsumerDetail->SecondName)?"":$report->ConsumerDetail->SecondName);?></td>
										</tr>
										<tr>
											<td>Surname</td>
											<td><?php echo (is_object($report->ConsumerDetail->Surname)?"":$report->ConsumerDetail->Surname);?></td>
										</tr>
									</table>
								</td>
								<td>
									<table class="table">
										<tr>
											<td>Postal Address</td>
											<td><?php echo (is_object($report->ConsumerDetail->PostalAddress)?"":$report->ConsumerDetail->PostalAddress);?></td>								
										<tr>
										</tr>
											<td>Residential Address</td>
											<td><?php echo (is_object($report->ConsumerDetail->ResidentialAddress)?"":$report->ConsumerDetail->ResidentialAddress);?></td>
										</tr>
										</tr>
											<td>Telephone No. (H)</td>
											<td><?php echo (is_object($report->ConsumerDetail->HomeTelephoneNo)?"":$report->ConsumerDetail->HomeTelephoneNo);?></td>								
										<tr>
										</tr>	
											<td>Telephone No (W)</td>
											<td><?php echo (is_object($report->ConsumerDetail->WorkTelephoneNo)?"":$report->ConsumerDetail->WorkTelephoneNo);?></td>
										<tr>
										<tr>
											<td>Cellular/Mobile</td>
											<td><?php echo (is_object($report->ConsumerDetail->CellularNo)?"":$report->ConsumerDetail->CellularNo);?></td>								
										<tr>								
										<tr>
											<td>E-mail Address</td>
											<td><?php echo (is_object($report->ConsumerDetail->EmailAddress)?"":$report->ConsumerDetail->EmailAddress);?></td>								
										<tr>
									</table>
								</td>
								<td>
									<table class="table table-striped">
									<tr>							
											<td>Current Employer</td>
											<td><?php echo (is_object($report->ConsumerDetail->EmployerDetail)?"":$report->ConsumerDetail->EmployerDetail);?></td>
									</tr>
									<?php if(!is_object($report->ConsumerDetail->MaritalStatusDesc)){ 
										if(strtolower($report->ConsumerDetail->MaritalStatusDesc) == "married"){
											$idNumberSearch = "";
											if(!is_object($report->ConsumerDetail->IDNo)){
												$idNumberSearch = $report->ConsumerDetail->IDNo;
											}
											if ($idNumberSearch != ""){
									?>
										<tr>
											<td colspan="2"><button class="btn btn-primary" type="button" onClick="getSpouseDetails('<?php echo $idNumberSearch;?>');"><i class="fa fa-search" aria-hidden="true"></i>&nbsp; View Spouse Details</button></td>
										</tr>
										<?php }
										}
									}?>
									</table>
								</td>								
							</tr>
						</table>
                    </div>
                </div>
              </div>
 
			<div class="panel panel-primary">
                <div class="panel-heading">Home Affairs Verification</div>
                <div class="panel-body">
                    <div class="col">
					
						<table class="table table-striped">
							<tr>
								<td>ID No. Verified Status</td>
								<td><?php echo (is_object($report->ConsumerFraudIndicatorsSummary->HomeAffairsVerificationYN)?"":$report->ConsumerFraudIndicatorsSummary->HomeAffairsVerificationYN);?></td>
							</tr>
							<tr>
								<td>ID No. Deceased Status</td>
								<td><?php echo (is_object($report->ConsumerFraudIndicatorsSummary->HomeAffairsDeceasedStatus)?"":$report->ConsumerFraudIndicatorsSummary->HomeAffairsDeceasedStatus);?></td>
							</tr>										
							<tr>
								<td>ID No. Found on Fraud Database</td>
								<td><?php echo (is_object($report->ConsumerFraudIndicatorsSummary->SAFPSListingYN)?"":$report->ConsumerFraudIndicatorsSummary->SAFPSListingYN);?></td>
							</tr>
						</table>
                    </div>
                </div>
              </div>
			  
				<div class="panel panel-primary">
                <div class="panel-heading">Directorship(s)</div>
                <div class="panel-body">
				<?php if($report->ConsumerDirectorShipLink){ ?>
				   <?php if(is_object($report->ConsumerDirectorShipLink)){ ?>
                    <div class="col">
						<div class="row">
							<div class="col-xs-3">Company Name:&nbsp;&nbsp;<strong><span><?php echo (is_object($report->ConsumerDirectorShipLink->CommercialName)?"":$report->ConsumerDirectorShipLink->CommercialName);?></span></strong></div>
							<div class="col-xs-3">Registration Number:&nbsp;&nbsp;<strong><span><?php echo (is_object($report->ConsumerDirectorShipLink->RegistrationNo)?"":$report->ConsumerDirectorShipLink->RegistrationNo);?></span></strong></div>
							<div class="col-xs-3">Director Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($report->ConsumerDirectorShipLink->DirectorStatus)?"":$report->ConsumerDirectorShipLink->DirectorStatus);?></span></strong></div>
							<div class="col-xs-3">Company Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($report->ConsumerDirectorShipLink->CommercialStatus)?"":$report->ConsumerDirectorShipLink->CommercialStatus);?></span></strong></div>
						</div>
						<hr class="hr-line"/>
					</div>
					
					<?php } else { 
						foreach($report->ConsumerDirectorShipLink as $director){
							if(is_object($director)){
						?>
						<div class="col">
							<div class="row">
								<div class="col-xs-3">Company Name:&nbsp;&nbsp;<strong><span><?php echo (is_object($director->CommercialName)?"":$director->CommercialName);?></span></strong></div>
								<div class="col-xs-3">Registration Number:&nbsp;&nbsp;<strong><span><?php echo (is_object($director->RegistrationNo)?"":$director->RegistrationNo);?></span></strong></div>
								<div class="col-xs-3">Director Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($director->DirectorStatus)?"":$director->DirectorStatus);?></span></strong></div>
								<div class="col-xs-3">Company Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($director->CommercialStatus)?"":$director->CommercialStatus);?></span></strong></div>
							</div>	
							<hr class="hr-line"/>
						</div>
						<?php } else {
							foreach($director as $directorx){?>
						<div class="col">
							<div class="row">
								<div class="col-xs-3">Company Name:&nbsp;&nbsp;<strong><span><?php echo (is_object($directorx->CommercialName)?"":$directorx->CommercialName);?></span></strong></div>
								<div class="col-xs-3">Registration Number:&nbsp;&nbsp;<strong><span><?php echo (is_object($directorx->RegistrationNo)?"":$directorx->RegistrationNo);?></span></strong></div>
								<div class="col-xs-3">Director Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($directorx->DirectorStatus)?"":$directorx->DirectorStatus);?></span></strong></div>
								<div class="col-xs-3">Company Status:&nbsp;&nbsp;<strong><span><?php echo (is_object($directorx->CommercialStatus)?"":$directorx->CommercialStatus);?></span></strong></div>
							</div>	
							<hr class="hr-line"/>
						</div>					
							<?php } 
						}
				} } }else {?>
						<span>Information not found</span>
				<?php } ?>
                </div>
              </div>


              <div class="panel panel-primary">
                <div class="panel-heading">Address History</div>
                <div class="panel-body">
					<?php if($report->ConsumerAddressHistory){ ?>
                    <table class="table table-striped" id="ConsumerAddressHistory">
						<thead>
                        <tr>
                            <th>Bureau UpdateDate</th>
                             <th>Type</th>
                             <th>Line1</th>
                             <th>Line2</th>
                             <th>Line3</th>
                             <th>Line4</th>
                             <th>Postal Code</th>
                        </tr>
						</thead>
						<tbody>
						<?php 
							if(!is_object($report->ConsumerAddressHistory)){
								foreach($report->ConsumerAddressHistory as $ConsumerAddressHistory){ ?>
								<tr>
									<td><?php echo (is_object($ConsumerAddressHistory->LastUpdatedDate)?"":$ConsumerAddressHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->AddressType)?"":$ConsumerAddressHistory->AddressType);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->Address1)?"":$ConsumerAddressHistory->Address1);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->Address2)?"":$ConsumerAddressHistory->Address2);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->Address3)?"":$ConsumerAddressHistory->Address3);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->Address4)?"":$ConsumerAddressHistory->Address4);?></td>
									<td><?php echo (is_object($ConsumerAddressHistory->PostalCode)?"":$ConsumerAddressHistory->PostalCode);?></td>
								</tr>
								<?php }
							} else { ?>
								<tr>
									<td><?php echo (is_object($report->ConsumerAddressHistory->LastUpdatedDate)?"":$report->ConsumerAddressHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->AddressType)?"":$report->ConsumerAddressHistory->AddressType);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->Address1)?"":$report->ConsumerAddressHistory->Address1);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->Address2)?"":$report->ConsumerAddressHistory->Address2);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->Address3)?"":$report->ConsumerAddressHistory->Address3);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->Address4)?"":$report->ConsumerAddressHistory->Address4);?></td>
									<td><?php echo (is_object($report->ConsumerAddressHistory->PostalCode)?"":$report->ConsumerAddressHistory->PostalCode);?></td>
								</tr>							
							<?php } ?>
							</tbody>
                    </table>
					<?php } else { ?>
					<span>Address History Not Found</span><br>
					<?php } ?>
                    
                </div>
              </div>

			 <div class="panel panel-primary">
				<div class="panel-heading">Consumer Email History</div>
				<div class="panel-body">
				<?php if($report->ConsumerEmailHistory){ ?>
					<table class="table table-striped"
						<?php 
						
						if (!is_object($report->ConsumerEmailHistory)){
							foreach($report->ConsumerEmailHistory as $ConsumerEmailHistory){?>
							<tr>
							  <td>Bureau Update</td><td><?php echo (is_object($ConsumerEmailHistory->LastUpdatedDate)?"":$ConsumerEmailHistory->LastUpdatedDate);?></td>
							</tr>	
							 <tr>	
							   <td>E-mail Address</td><td><?php echo (is_object($ConsumerEmailHistory->EmailAddress)?"":$ConsumerEmailHistory->EmailAddress);?></td>
							 </tr>
							<?php }
						} else { ?>
							<tr>
							  <td>Bureau Update</td><td><?php echo (is_object($report->ConsumerEmailHistory->LastUpdatedDate)?"":$report->ConsumerEmailHistory->LastUpdatedDate);?></td>
							</tr>	
							<tr>							
							   <td>E-mail Address</td><td><?php echo (is_object($report->ConsumerEmailHistory->EmailAddress)?"":$report->ConsumerEmailHistory->EmailAddress);?></td>
							 </tr>
					<?php } ?>
					 </table>
				<?php } else { ?>
					   <div>
						 <span>Email History Not Found</span><br>
					</div>
				<?php } ?>
			  </div>
		   </div>

           <div class="panel panel-primary">
            <div class="panel-heading">Consumer Employment History</div>
            <div class="panel-body">
			<?php if($report->ConsumerEmploymentHistory){ ?>
                <table class="table table-striped" id="ConsumerEmploymentHistory">
					<thead>
                    <tr>
                        <th>Bureau UpdateDate</th>
                        <th>Employer</th>
                        <th>Designation</th>
                    </tr>
					</thead>
					<tbody>
					<?php 
						if(!is_object($report->ConsumerEmploymentHistory)){
							foreach($report->ConsumerEmploymentHistory as $ConsumerEmploymentHistory){?>
								<tr>
									<td><?php echo (is_object($ConsumerEmploymentHistory->LastUpdatedDate)?"":$ConsumerEmploymentHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($ConsumerEmploymentHistory->EmployerDetail)?"":$ConsumerEmploymentHistory->EmployerDetail);?></td>
									<td><?php echo (is_object($ConsumerEmploymentHistory->Designation)?"":$ConsumerEmploymentHistory->Designation);?></td>
								</tr>
							<?php }
						} else{
							
							?>
								<tr>
									<td><?php echo (is_object($report->ConsumerEmploymentHistory->LastUpdatedDate)?"":$report->ConsumerEmploymentHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($report->ConsumerEmploymentHistory->EmployerDetail)?"":$report->ConsumerEmploymentHistory->EmployerDetail);?></td>
									<td><?php echo (is_object($report->ConsumerEmploymentHistory->Designation)?"":$report->ConsumerEmploymentHistory->Designation);?></td>
								</tr>
						<?php } ?>
						</tbody>
                </table>
				<?php } else { ?>
                 <div>
                    <span>Employment History Not Found</span><br>
                </div>
				<?php } ?>
            </div>
          </div>

          <div class="panel panel-primary">
            <div class="panel-heading">Contact No. History</div>
            <div class="panel-body">
				<?php if($report->ConsumerTelephoneHistory){?>
                <table class="table table-striped" id="ConsumerTelephoneHistory">
					<thead>
                    <tr>
                        <th>Bureau UpdateDate</th>
                        <th>Type</th>
                        <th>Telephone No</th>
                    </tr>
					</thead>
					<tbody>
						<?php 
							 if(!is_object($report->ConsumerTelephoneHistory)){
								foreach($report->ConsumerTelephoneHistory as $ConsumerTelephoneHistory){ ?>
								<tr>
									<td><?php echo (is_object($ConsumerTelephoneHistory->LastUpdatedDate)?"":$ConsumerTelephoneHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($ConsumerTelephoneHistory->TelephoneType)?"":$ConsumerTelephoneHistory->TelephoneType);?></td>
									<td><?php echo (is_object($ConsumerTelephoneHistory->TelephoneNo)?"":$ConsumerTelephoneHistory->TelephoneNo);?></td>
								</tr>
								<?php } 
							 } else {?>
								<tr>
									<td><?php echo (is_object($report->ConsumerTelephoneHistory->LastUpdatedDate)?"":$report->ConsumerTelephoneHistory->LastUpdatedDate);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneHistory->TelephoneType)?"":$report->ConsumerTelephoneHistory->TelephoneType);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneHistory->TelephoneNo)?"":$report->ConsumerTelephoneHistory->TelephoneNo);?></td>
								</tr>							 
							 <?php } ?>
					</tbody>
                </table>
				<?php } else { ?>
                 <div>
					<span>Contact Number Not Found</span><br>
                </div>
				<?php } ?>
          </div>
         </div>
         
           <div class="panel panel-primary">
                <div class="panel-heading">Telephone Linkages</div>
                <div class="panel-body">
                <!-- Consumer Telephone Linkage Cellular -->
                <div class="panel panel-secondary">
                <div class="panel-heading"><strong>Consumer Telephone Linkage Cellular</strong></div>
                <div class="panel-body">
					<?php 
					if($report->ConsumerTelephoneLinkageCellular){?>
                    <table class="table table-striped"id="ConsumerTelephoneLinkageCellular">
						<thead>
                        <tr>
                             <th>Customer Id</th>
                            <th>Name</th>
                            <th>Cell No</th>
                             <th>Work Tel</th>
                             <th>Idno</th>
                             <th>PassportNo</th>
                        </tr>
						</thead>
						<tbody>
						<?php if(!is_object($report->ConsumerTelephoneLinkageCellular)){
								foreach($report->ConsumerTelephoneLinkageCellular as $ConsumerTelephoneLinkageCellular){?>
								<tr>
									<td><?php echo $ConsumerTelephoneLinkageCellular->ConsumerID;?></td>
									<td><?php echo $ConsumerTelephoneLinkageCellular->ConsumerName." ".$ConsumerTelephoneLinkageCellular->Surname;?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageCellular->CellularNo)?"":$ConsumerTelephoneLinkageCellular->CellularNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageCellular->HomeTelephone)?"":$ConsumerTelephoneLinkageCellular->HomeTelephone);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageCellular->IDNo)?"":$ConsumerTelephoneLinkageCellular->IDNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageCellular->PassportNo)?"":$ConsumerTelephoneLinkageCellular->PassportNo);?></td>
								</tr>
						<?php } 
						} else {?>
								<tr>
									<td><?php echo $report->ConsumerTelephoneLinkageCellular->ConsumerID;?></td>
									<td><?php echo $report->ConsumerTelephoneLinkageCellular->ConsumerName." ".$ConsumerTelephoneLinkageCellular->Surname;?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageCellular->CellularNo)?"":$report->ConsumerTelephoneLinkageCellular->CellularNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageCellular->HomeTelephone)?"":$report->ConsumerTelephoneLinkageCellular->HomeTelephone);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageCellular->IDNo)?"":$report->ConsumerTelephoneLinkageCellular->IDNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageCellular->PassportNo)?"":$report->ConsumerTelephoneLinkageCellular->PassportNo);?></td>
								</tr>
						<?php } ?>
						</tbody>
                    </table>
					<?php } else { ?>
                    <span>Consumer Telephone Linkage Cellular Not Found</span><br>
					<?php } ?>
				</div>
              </div>
                <!-- Consumer Telephone Linkage Work -->
                 <div class="panel panel-secondary">
                <div class="panel-heading"><strong>Consumer Telephone Linkage Work</strong></div>
                <div class="panel-body">
				<?php if($report->ConsumerTelephoneLinkageWork){?>
                    <table class="table table-striped" id="ConsumerTelephoneLinkageWork">
						<thead>
                        <tr>
                             <th>Customer Id</th>
                             <th>Name</th>
                             <th>Cell No</th>
                             <th>Work Tel</th>
                             <th>Idno</th>
                             <th>PassportNo</th>
                        </tr>
						</thead>
						<tbody>
						<?php 
							if(!is_object($report->ConsumerTelephoneLinkageWork)){
								foreach($report->ConsumerTelephoneLinkageWork as $ConsumerTelephoneLinkageWork){?>
								<tr>
									<td><?php echo $ConsumerTelephoneLinkageWork->ConsumerID;?></td>
									<td><?php echo $ConsumerTelephoneLinkageWork->ConsumerName." ".$ConsumerTelephoneLinkageWork->Surname;?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageWork->CellularNo)?"":$ConsumerTelephoneLinkageWork->CellularNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageWork->HomeTelephone)?"":$ConsumerTelephoneLinkageWork->HomeTelephone);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageWork->IDNo)?"":$ConsumerTelephoneLinkageWork->IDNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageWork->PassportNo)?"":$ConsumerTelephoneLinkageWork->PassportNo);?></td>
								</tr>
								<?php } 
							} else { ?>
								<tr>
									<td><?php echo $report->ConsumerTelephoneLinkageWork->ConsumerID;?></td>
									<td><?php echo $report->ConsumerTelephoneLinkageWork->ConsumerName." ".$report->ConsumerTelephoneLinkageWork->Surname;?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageWork->CellularNo)?"":$report->ConsumerTelephoneLinkageWork->CellularNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageWork->HomeTelephone)?"":$report->ConsumerTelephoneLinkageWork->HomeTelephone);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageWork->IDNo)?"":$report->ConsumerTelephoneLinkageWork->IDNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageWork->PassportNo)?"":$report->ConsumerTelephoneLinkageWork->PassportNo);?></td>
								</tr>							
							<?php } ?>
						</tbody>
                    </table>
					<?php } else { ?>
                    <span>Consumer Telephone Linkage Work Not Found</span><br>
					<?php } ?>
                    </div>
              </div>
              <!-- Consumer Telephone Linkage Home -->
                <div class="panel panel-secondary">
                <div class="panel-heading"><strong>Consumer Telephone Linkage Home</strong></div>
                <div class="panel-body">
				<?php if($report->ConsumerTelephoneLinkageHome){?>
                    <table class="table table-striped"id="ConsumerTelephoneLinkageHome">
						<thead>
                        <tr>
                             <th>Customer Id</th>
                            <th>Name</th>
                            <th>Cell No</th>
                             <th>Work Tel</th>
                             <th>Idno</th>
                             <th>PassportNo</th>
                        </tr>
						</thead>
						<tbody>
						<?php 
							if(!is_object($report->ConsumerTelephoneLinkageHome)){
								foreach($report->ConsumerTelephoneLinkageHome as $ConsumerTelephoneLinkageHome){?>
								<tr>
									<td><?php echo $ConsumerTelephoneLinkageHome->ConsumerID;?></td>
									<td><?php echo $ConsumerTelephoneLinkageHome->ConsumerName." ".$ConsumerTelephoneLinkageHome->Surname;?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageHome->CellularNo)?"":$ConsumerTelephoneLinkageHome->CellularNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageHome->HomeTelephone)?"":$ConsumerTelephoneLinkageHome->HomeTelephone);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageHome->IDNo)?"":$ConsumerTelephoneLinkageHome->IDNo);?></td>
									<td><?php echo (is_object($ConsumerTelephoneLinkageHome->PassportNo)?"":$ConsumerTelephoneLinkageHome->PassportNo);?></td>
								</tr>
							<?php } 
							} else { ?>
								<tr>
									<td><?php echo $report->ConsumerTelephoneLinkageHome->ConsumerID;?></td>
									<td><?php echo $report->ConsumerTelephoneLinkageHome->ConsumerName." ".$report->ConsumerTelephoneLinkageHome->Surname;?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageHome->CellularNo)?"":$report->ConsumerTelephoneLinkageHome->CellularNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageHome->HomeTelephone)?"":$report->ConsumerTelephoneLinkageHome->HomeTelephone);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageHome->IDNo)?"":$report->ConsumerTelephoneLinkageHome->IDNo);?></td>
									<td><?php echo (is_object($report->ConsumerTelephoneLinkageHome->PassportNo)?"":$report->ConsumerTelephoneLinkageHome->PassportNo);?></td>
								</tr>							
							<?php } ?>
							</tbody>
                    </table>
					<?php } else { ?>
						<span>Consumer Telephone Linkage Home Not Found</span><br>
					<?php } ?>
                </div>
              </div>
                </div>
                </div>
				<?php if($report->ConsumerPropertyInformation){?>
                <div>
				 <div class="panel panel-primary">
					<div class="panel-heading">Property Interest</div>
					<div class="panel-body">
						<div class="col">
							
							<?php if(is_array($report->ConsumerPropertyInformation)){
								foreach($report->ConsumerPropertyInformation as $ConsumerPropertyInformation ){
								?>
									<table class="table table-striped">
									<tr>
										<td>Tittle Deed Number</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->TitleDeedNo)?"":$ConsumerPropertyInformation->TitleDeedNo);?></td>
										<td>Erf/Site No</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->ErfNo)?"":$ConsumerPropertyInformation->ErfNo);?></td>
									</tr>
									<tr>
										<td>Deed Office</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->DeedsOffice)?"":$ConsumerPropertyInformation->DeedsOffice);?></td>
										<td>Physical Address</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->PhysicalAddress)?"":$ConsumerPropertyInformation->PhysicalAddress);?></td>
									</tr>
									<tr>
										<td>Property Type</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->PropertyTypeDesc)?"":$ConsumerPropertyInformation->PropertyTypeDesc);?></td>
										<td>Extent/Size</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->ErfSize)?"":$ConsumerPropertyInformation->ErfSize);?></td>
									</tr>
									<tr>
										<td>Purchase Date</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->PurchaseDate)?"":$ConsumerPropertyInformation->PurchaseDate);?></td>
										<td>Purchase Price</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->PurchasePriceAmt)?"":$ConsumerPropertyInformation->PurchasePriceAmt);?></td>
									</tr>
									<tr>
										<td>Bond Holder</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->BondHolderName)?"":$ConsumerPropertyInformation->BondHolderName);?></td>
										<td>Bond Amount</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->BondAmt)?"":$ConsumerPropertyInformation->BondAmt);?></td>
									</tr>
									<tr>
										<td>Bond Number</td>
										<td><?php echo (is_object($ConsumerPropertyInformation->BondAccountNo)?"":$ConsumerPropertyInformation->BondAccountNo);?></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								<hr>
							<?php }
							} else {
									?>
									<table class="table table-striped">
									<tr>
										<td>Title Deed Number</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->TitleDeedNo)?"":$report->ConsumerPropertyInformation->TitleDeedNo);?></td>
										<td>Erf/Site No</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->ErfNo)?"":$report->ConsumerPropertyInformation->ErfNo);?></td>
									</tr>
									<tr>
										<td>Deed Office</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->DeedsOffice)?"":$report->ConsumerPropertyInformation->DeedsOffice);?></td>
										<td>Physical Address</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->PhysicalAddress)?"":$report->ConsumerPropertyInformation->PhysicalAddress);?></td>
									</tr>
									<tr>
										<td>Property Type</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->PropertyTypeDesc)?"":$report->ConsumerPropertyInformation->PropertyTypeDesc);?></td>
										<td>Extent/Size</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->ErfSize)?"":$report->ConsumerPropertyInformation->ErfSize);?></td>
									</tr>
									<tr>
										<td>Purchase Date</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->PurchaseDate)?"":$report->ConsumerPropertyInformation->PurchaseDate);?></td>
										<td>Purchase Price</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->PurchasePriceAmt)?"":$report->ConsumerPropertyInformation->PurchasePriceAmt);?></td>
									</tr>
									<tr>
										<td>Bond Holder</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->BondHolderName)?"":$report->ConsumerPropertyInformation->BondHolderName);?></td>
										<td>Bond Amount</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->BondAmt)?"":$report->ConsumerPropertyInformation->BondAmt);?></td>
									</tr>
									<tr>
										<td>Bond Number</td>
										<td><?php echo (is_object($report->ConsumerPropertyInformation->BondAccountNo)?"":$report->ConsumerPropertyInformation->BondAccountNo);?></td>
										<td></td>
										<td></td>
									</tr>
									</table>
							<?php } ?>
							
						</div>
					</div>
				  </div>
              </div>
			  <?php } 
				if($report->consumerDirectorSummary){
			  ?>
              <div>
              <div class="panel panel-primary">
                <div class="panel-heading">Consumer Director Summary</div>
                <div class="panel-body">
                    <div class="col">
                        <div class="col-xs-4 ">Number Of Company Director&nbsp;&nbsp;<strong><span><?php echo (is_object($report->ConsumerDirectorSummary->NumberOfCompanyDirector)?"":$report->ConsumerDirectorSummary->NumberOfCompanyDirector);?></span></strong></div>
                    </div>
                </div>
              </div>
              </div>
			 <?php } ?>
    </div>
    </div>
</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$('#ConsumerAddressHistory').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
	$('#ConsumerEmploymentHistory').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
	$('#ConsumerTelephoneHistory').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
	$('#ConsumerTelephoneLinkageCellular').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
	$('#ConsumerTelephoneLinkageWork').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
	$('#ConsumerTelephoneLinkageHome').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
});

function getSpouseDetails(strId){
	$("#loadMe").modal({
      backdrop: "static", //remove ability to close modal with click
      keyboard: false, //remove option to close with keyboard
      show: true //Display loader!
    });	
	

	$.post("<?php echo site_url();?>/procurementreport/getspousedetails",
	  {
		idnumber: strId
	  },
	  function(data, status){
		  $("#loadMe").modal('hide');
		  $("#loadSpouse").html(data);
		  $("#loaddata").modal();
	  });
}
</script>
</html>