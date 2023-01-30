<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Company Name Search</title>
</head>
<body>
<section class="content-header">
    <h1>LKCentrix Solutions PTY LTD</h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url();?>/indigentreport/idsearch"><i class="fa fa-dashboard"></i> Dashboard</a></li><li>Search History</li>
        <li class="active">Search History</li>
    </ol>
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Search History</h3>

        </div>
           <!-- Error Alert -->
		<?php if($errorMessage != ""){?>
			<div class="alert alert-danger" role="alert"><?php echo $errorMessage;?></div>
	   <?php }?>
    </div>
	<?php
	 if (count($consumerList) > 0){
	?>
    <div>
          <table class="table table-striped" id="search_history_table">
		    <thead>
            <tr>
              <th>Report Name</th>
              <th>Report Type</th>
              <th>Date Time</th>
              <th>Search Data</th>
            </tr>
			</thead>
			<tbody>
			<?php 
				foreach($consumerList as $consumerListKey => $consumerListValue){
			?>
			
            <tr>
              <td><?php echo $consumerListValue->auditlog_reportname;?></td>
              <td><?php echo $consumerListValue->auditlog_reporttype;?></td>
              <td><?php echo $consumerListValue->auditlog_datetime;?></td>
              <td><?php echo $consumerListValue->auditlog_searchdata;?></td>
            </tr>
			<?php } ?>
			<t/body>
          </table>
       </div>
	<?php } ?>
</section>
</body>
<script>
$(document).ready(function(){
	$('#search_history_table').DataTable({
        /* No ordering applied by DataTables during initialisation */
        "order": []
    });
});
</script>
</html>
