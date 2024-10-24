<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <title>Foodbox</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
        <style>
        	.button-box{
        	margin-left:220px!important;
        	}
        </style>
	</head>
	
<body>
	 <%@include file="include/header.jsp" %>
	 <br><br>
	   <!-- login-area start -->
        <div class="register-area ptb-100">
            <div class="container-fluid">
            <h1 class="text-center">Login</h1>
                <div class="row">
                    <div class="col-md-12 col-12 col-lg-6 col-xl-6 ms-auto me-auto">
                        <div class="login">
                            <div class="login-form-container">
                                <div class="login-form">
								<form method="post" id="login">
									<input type="text" name="username" placeholder="Username"
										required> 
										<input type="hidden" name="event" value="loginUserAndAdmin"> 
										<input type="password" name="password" placeholder="Password" required> 
										<input type="checkbox"> <label>Remember me</label>
										<div class="button-box">
											<div class="login-toggle-btn ">
												<div class="buttonlogin">
													<button type="submit" class="default-btn ">Login</button>
												</div>
											</div>
										</div>
								</form>
							</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login-area end -->
	
	  <%@include file="include/footer.jsp" %>
	<!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
	<script>
  	$(document).ready(function(){
  		console.log("page is ready .....")
  		$("#login").on('submit',function(event){
  			event.preventDefault();
			var f=$(this).serialize();
			$.ajax({
  				url:"loginController",
  				data:f,
  				method:'POST',
				dataType:'JSON',
  				success:function(data){
  					var status =JSON.parse(data);
  					
  					if(status==1){
  						alert("login Successful");
  						window.location.href = 'index.jsp';
  		  			}else if(status==2){
  		  			  alert("login Successful");
  		  			  window.location.href = 'admin/index.jsp';
  		  			}
  		  			else{
  		  			 alert("login Failed!");
  		  			}
  				},
				error:function(jqXHR,textStatus,errorThrown){
					console.log("error...")
  				}
  			})
  		})
  	})
  </script>
</body>
</html>