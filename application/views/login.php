<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>LKCENTRIX SOLUTIONS - Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
          name="viewport"/>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo base_url();?>bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url();?>dist/css/LkCentrix.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>dist/css/skin-blue.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url();?>plugins/iCheck/square/blue.css">
    <link rel="icon" href="<?php echo base_url();?>dist/img/lk-Logo.png">
	<script src='https://www.google.com/recaptcha/api.js'></script>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	    <style>
        .alert .alert-info .login-page{
                color: #172d44 !important;
                    border-color: #efefef;
        }
        .login-page body{
                background-color:#f9f9f9 !important;
                	overflow:hidden;
        }
        </style>
</head>
<body class="login-page">
	<div class="login-box" style="">    
		<!-- /.login-logo -->
		<div class="login-box-body">
		<div class="row">
			<div class="col-md-12">    
			<div class="col-md-6"> <div class="login-logo">
			<div><img src="https://lkcentrix.co.za/wp-content/uploads/2022/01/lk-Logo-FinalHD.png" style="width:350px;"></div>
		</div>   </div>
			<div class="col-md-6" style="border-left: 1px solid #efefef;"> <!-- Error Alert -->
			<?php if($errorSession != ""){?>
			 <div class="alert alert-danger"  role="alert">
				<?php echo $errorSession; ?>
			 </div> <!-- th:if="${errorSession}" th:text="${errorSession}" -->
			<?php }?>
			
			<?php if($logoutSession != ""){?>
			 <div class="alert alert-success"  role="alert">
				<?php echo $logoutSession; ?>
			 </div> <!-- th:if="${errorSession}" th:text="${errorSession}" -->
			<?php }?>
			
			<form method="post" action="<?php echo site_url();?>/user/login" id="form-search"> <!--th:action="@{/traceenquiry}" th:object="${signRequest}" --> 
				
				<div id="spinner" class="spinner" style="display:none;"  class="form-group has-feedback">
					<strong>please wait while loading ....</strong>
				</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="username" placeholder="Username" value="<?php echo set_value('username'); ?>"/> <!-- th:field="*{username}" --> 
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="password" placeholder="Password" value="<?php echo set_value('password'); ?>"/> <!-- th:field="*{password}" --> 
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_key') ?>"></div>
				</div>				
				<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block btn-flat" id="button-search">Login</button>
				</div>
				</form>
			</div>   
		
		</div>
			</div>
		</div>
	   
	</div>


<!-- jQuery 3 -->
<script src="<?php echo base_url();?>bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo base_url();?>plugins/iCheck/icheck.min.js"></script>
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
    height: 102px; /*hight of the spinner gif +2px to fix IE8 issue */
}

</style>
<script type="text/javascript">
$(document).ready(function(){
    $('#button-search').click(function() {
		$('#button-search').disabled = true;
        $('#spinner').show();
		$('#form-search').submit();
    });
});
</script>

<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
