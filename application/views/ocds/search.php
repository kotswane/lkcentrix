<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Company Name Search</title>
</head>
<body>
<section class="content-header">
    <h1>LKCentrix Solutions PTY LTD</h1>
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Tender: Company Name Search</h3>
        </div>
           <!-- Error Alert -->
            <?php if($errorMessage != ""){?>
				<div class="alert alert-danger" role="alert"><?php echo $errorMessage;?></div>
		   <?php }?>
        <form data-toggle="validator" role="ID Search" action="<?php echo site_url();?>/ocds/search" method="post" id="form-search">
            <div class="box-body">
				<div id="spinner" class="spinner" style="display:none;"  class="form-group has-feedback">
					<strong>please wait while loading ....</strong>
				</div>
                 <div class="form-group">
                    <label for="companyname">Company name</label>
                    <input type="text"  class="form-control" value="<?php echo set_value('companyname');?>" name="companyname" id="companyname" placeholder="Company Name" autofocus required />
                 </div>

            </div>
            <div class="box-footer">
                <button class="btn btn-primary" type="button" id="button-search"><i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search</button>
            </div>
			<input type="hidden" name="postback" value="post"/>
        </form>
    </div>
	<?php
	 if ($details){
	?>
    <div>
      	 <h5><span><strong>Tender Details</strong></span></h5>
          <table class="table table-striped" id="ConsumerDetails">
		   <thead>
            <tr>
			  <th>TenderID</th>
              <th>Title</th>
              <th>Status</th>
              <th>Procurement Category</th>
              <th>Amount</th>
              <th>Currency</th>
              <th>Start Date</th>
              <th>End Date</th>
            </tr>
			</thead>
			<tbody>
			<?php  
			foreach($details as $detail){
			?>
            <tr>
              <td><?php echo $detail->tenderid;?></td>
              <td><?php echo $detail->title;?></td>
              <td><?php echo $detail->status;?></td>
              <td><?php echo $detail->mainProcurementCategory;?></td>
              <td><?php echo $detail->amount;?></td>
              <td><?php echo $detail->currency;?></td>
              <td><?php echo $detail->startDate;?></td>
              <td><?php echo $detail->endDate;?></td>
            </tr>	
			<tr>
				<td><strong>Description</strong></td>
				<td colspan="7"><?php echo $detail->description;?></td>
			</tr>
			<?php } ?>
			</tbody>
          </table>
       </div>
	   <br>
	   <br>
	<?php } ?>
	
	<?php
	 if ($doc){
	?>
    <div>
      	 <h5><span><strong>Tender Documents</strong></span></h5>
          <table class="table table-striped" id="ConsumerDetails">
		   <thead>
            <tr>
              <th>title</th>
              <th>Date Modified</th>
            </tr>
			</thead>
			<tbody>
			<?php  
			foreach($doc as $detail){
			?>
            <tr>
              <td><?php echo $detail->title;?></td>
              <td><?php echo $detail->dateModified;?></td>
            </tr>	
			<tr>
				<td><strong>url</strong></td>
				<td colspan="2"><a href="<?php echo $detail->url;?>" target="_blank"><?php echo $detail->url;?></a></td>
			</tr>
			<?php } ?>
			</tbody>
          </table>
       </div>
	   <br>
	   <br>
	<?php } ?>
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
	
	$("#companyname").autocomplete({  
        minLength:3,
        delay:0,
        source:'<?php echo site_url('ocds/find'); ?>', 
	});

});

function fnRedirect(strVal){
	//$('#spinner').show();
	
	$("#loadMe").modal({
      backdrop: "static", //remove ability to close modal with click
      keyboard: false, //remove option to close with keyboard
      show: true //Display loader!
    });	

	location.href = strVal;
}


</script>

</html>
