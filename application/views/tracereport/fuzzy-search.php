<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Address Search</title>
</head>
<body>
<section class="content-header">
    <h1>LKCentrix Solutions PTY LTD</h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url();?>/lkcentrixreportservice/fuzzysearch"><i class="fa fa-dashboard"></i> Dashboard</a></li><li>Trace Report</li>
        <li class="active">Fuzzy Search</li>
    </ol>
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Fuzzy Search</h3>
            <div class="box-tools pull-right">
                <a href="<?php echo site_url();?>/lkcentrixreportservice/fuzzysearch" type="button" class="btn btn-box-tool"><i class="fa fa-list-ul"></i></a>
            </div>
        </div>
           <!-- Error Alert -->
         	<?php if($errorMessage != ""){?>
				<div class="alert alert-danger" role="alert"><?php echo $errorMessage;?></div>
		   <?php }?>
		
        <form data-toggle="validator" role="Fuzzy Search form" action="<?php echo site_url();?>/lkcentrixreportservice/fuzzysearch" method="post">
            <div class="box-body"><br>
                <div class="form-group">
                 <label class="col-form-label">Search Type</label>
                    <select class="form-control" id="searchType" required>
					<option value="">Please Select Search Type</option>
					<!--<option th:each="searchType : ${searchTypes}" th:value="${searchType}" th:text="${searchType}" th:selected="${searchType}"></option> -->
					</select>
                 </div>
                 <div class="form-group">
                 <label class="col-form-label">First Name</label>
                    <input type="text" value="<?php echo set_value('firstName');?>" class="form-control" name="firstName" id="firstName" placeholder="Enter First name" />
                 </div>
                  <div class="form-group">
                  <label class="col-form-label">Surname</label>
                    <input type="text"  class="form-control" value="<?php echo set_value('surname');?>" name="surname" id="surname" placeholder="Enter Surname" />
                 </div>
                 <div class="form-group">
                 <label class="col-form-label">Year(YYYY)</label>
                   <input type="text"  class="form-control" value="<?php echo set_value('year');?>" name="year" id="year" placeholder="Enter Year" />
                 </div>
                 <div class="form-group">
                 <label class="col-form-label">Age</label>
                    <input type="text"  class="form-control" value="<?php echo set_value('age');?>" name="age" id="age" placeholder="Enter Age" />
                 </div>
                  <div class="form-group">
                 <label class="col-form-label">Deviation of Age (+-)</label>
                    <select class="form-control" id="deviation" required>
					<option value="">Please Select Deviation Type</option>
					<!--<option th:each="deviation : ${listDeviations}" th:value="${deviation}" th:text="${deviation}" th:selected="${deviation}"></option>-->
					</select>
                 </div>
                  
                </div> 
            <div class="box-footer">
                <button class="btn btn-primary" type="submit"><i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search</button>
            </div>
        </form>
    </div>
	<?php
	 if (count($consumerList) > 0){
	?>
    <div>
      	 <h5><span><strong>Search Results List</strong></span></h5>
          <table class="table table-striped">
            <tr>
            <th>Reference No</th>
              <th>Names</th>
              <th>Id Number</th>
              <th>Details Viewed</th>
              <th>View</th>
            </tr>
			<?php foreach($consumerList as $consumerListKey => $consumerListValue){?>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td>
               <a type="button" href="/traceenquiry/view-addresstrace-search/nquiryId/enquiryResultId"  class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;View</a> 
              </td>
            </tr>
			<?php }?>
          </table>
       </div>
	<?php } ?>
</section>
</body>
</html>
