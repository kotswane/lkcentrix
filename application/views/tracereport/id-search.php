<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>ID Search</title>
</head>
<body>
<section class="content-header">
    <h1>LKCentrix Solutions PTY LTD</h1>
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">ID Search</h3>
        </div>
           <!-- Error Alert -->
  
		
		<?php if($errorMessage != ""){?>
		   <div> 
				<div class="alert alert-danger" role="alert"> 
					<?php echo $errorMessage; ?>
				</div>
			</div>
		<?php }?>
		
        <form data-toggle="validator" role="ID Search form" id="form-search" action="<?php echo site_url();?>/tracereport/idsearch" method="post">
            <div class="box-body">
                  <ul class="nav nav-tabs">
                    <li><a data-toggle="tab" href="#tab1">ID Number</a></li>
                    <li><a data-toggle="tab" href="#tab2">Passport Number</a></li>
                  </ul>

                  <div class="tab-content">
                    <div id="tab1" class="tab-pane fade in active">
                        <br>
                        
                        <div class="form-group">
                        <label class="col-form-label">ID Number</label>
                            <input type="number" class="form-control" value="<?php echo set_value("idNumber");?>" name="idNumber"  id="idNumber" placeholder="Enter ID Number" maxlength="13" autofocus/>
                        </div>
                         <div class="form-group">
                    <label class="col-form-label">Surname</label>
                            <input type="text" class="form-control" value="<?php echo set_value("surname");?>" name="surname" id="surname" placeholder="Enter Surname"/>
                        </div>
                     <div class="form-group">
                     <label class="col-form-label">First Name</label>
                           <input type="text"  class="form-control" value="<?php echo set_value("firstname");?>" name="firstname" id="firstname" placeholder="Enter FirstName"/>
                       </div>

                    </div>
 
                    <div id="tab2" class="tab-pane fade">
                        <br>
                        <div class="form-group">
                        <label class="col-form-label">Passport No</label>
                           <input type="text" class="form-control" value="<?php echo set_value("passportNo");?>" name = "passportNo" id="passportNo" placeholder="Passport Number" autofocus/>
                       </div>
                        <div class="form-group">
                    <label class="col-form-label">Surname</label>
                            <input type="text" class="form-control" value="<?php echo set_value("passsportSurname");?>" name="passsportSurname" id="passsportSurname" placeholder="Enter Surname"/>
                        </div>
                     <div class="form-group">
                     <label class="col-form-label">First Name</label>
                           <input type="text"  class="form-control" value="<?php echo set_value("passportFirstName");?>" name="passportFirstName" id="passportFirstName" placeholder="Enter FirstName"/>
                       </div>
                  </div>
            </div>
            </div>

            <div class="box-footer">
				<div id="spinner" class="spinner" style="display:none;"  class="form-group has-feedback">
					<strong>please wait while loading ....</strong>
				</div>
				<div class="form-group has-feedback">
						<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_key') ?>"></div>
				</div>
                <button class="btn btn-primary" id="button-search" type="button"><i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search</button>
            </div>
            <input type="hidden" name="postback" value="post"/>
        </form>
        
    </div>
</section>
</body>

<script type="text/javascript">
$(document).ready(function(){
    $('#button-search').click(function() {
		
		$("#loadMe").modal({
		  backdrop: "static", //remove ability to close modal with click
		  keyboard: false, //remove option to close with keyboard
		  show: true //Display loader!
		});      
		
		$('#form-search').submit();
    });
});

</script>
</html>
