<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Company Registration Number</title>
		<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<section class="content-header">
    <h1>LKCentrix Solutions PTY LTD</h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url();?>/procurementreport/companyregistrationno"><i class="fa fa-dashboard"></i> Dashboard</a></li><li>Procurement Report</li>
        <li class="active">Company Registration Number</li>
    </ol>
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Company Registration Number</h3>

        </div>
           <!-- Error Alert -->
            <?php if($errorMessage != ""){?>
				<div class="alert alert-danger" role="alert"><?php echo $errorMessage;?></div>
		   <?php }?>
        <form data-toggle="validator" role="Company Name Search" id="form-search" action="<?php echo site_url();?>/procurementreport/companyregistrationno" method="post">
            <div class="box-body">
				<div id="spinner" class="spinner" style="display:none;"  class="form-group has-feedback">
						<strong>please wait while loading ....</strong>
				</div>
                 <div class="form-group">
                    <label for="companyregistrationno">Registration Number</label>
                    <input type="text"  class="form-control" value="<?php echo set_value('companyregistrationno');?>" id="companyregistrationno" name="companyregistrationno" placeholder="Company Registration Number" maxlength="60" autofocus required />
                 </div>
            </div>
				<div class="form-group has-feedback">
					<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_key') ?>"></div>
				</div>
            <div class="box-footer">
                <button class="btn btn-primary" type="button" id="button-search"><i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search</button>
            </div>
			<input type="hidden" name="postback" value="post"/>
        </form>
	 <?php
		$companyregistrationno = "companyregistrationno";
	 if ($consumerList->CommercialDetails){
		 $consumerList = $consumerList->CommercialDetails;
	?>
    <div>
      	 <h5><span><strong>Search Results List</strong></span></h5>
          <table class="table table-striped" id="companyname_table">
            <tr>
              <th>Reference Number</th>
              <th>Business Name</th>
              <th>Registration Number</th>
              <th>View</th>
            </tr>

            <tr>
              <td><?php echo $consumerList->Reference;?></td>
              <td><?php echo $consumerList->Businessname;?></td>
              <td><?php echo $consumerList->RegistrationNo;?></td>
              <td>
               <a type="button" onClick="fnRedirect('<?php echo site_url()?>/procurementreport/customerdatalist/<?php echo $consumerList->EnquiryID;?>/<?php echo $consumerList->EnquiryResultID;?>/<?php echo $companyregistrationno;?>')"  class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;View</a>              
			  </td>
            </tr>

          </table>
       </div>
	<?php } ?>
    </div>
</section>
</body>
<script src="<?php echo base_url();?>bower_components/jquery/dist/jquery.min.js"></script>
<style>
.spinner {
    position: fixed;
    top: 50%;
    left: 50%;
    margin-left: -50px; /* half width of the spinner gif */
    margin-top: -50px; /* half height of the spinner gif */
    text-align:center;
    z-index:1234;
    overflow: auto;
    width: 200px; /* width of the spinner gif */
    height: 50px; /*hight of the spinner gif +2px to fix IE8 issue */
}

</style>
<script type="text/javascript">
$(document).ready(function(){
    $('#button-search').click(function() {
        $('#spinner').show();
		$('#form-search').submit();
    });
});

function fnRedirect(strVal){
	$('#spinner').show();
	location.href = strVal;
}

$(document).ready(function(){
    $('#companyname_table').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
});
</script>
</html>


