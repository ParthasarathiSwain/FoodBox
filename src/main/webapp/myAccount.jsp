
<%@page import="Util.DbConnection"%>
<%@page import="java.sql.*"%>
<%
if (session.getAttribute("name") == null || session.getAttribute("name").equals(""))
{
	response.sendRedirect("login.jsp");
}%>
<!DOCTYPE html>
<html>
<style>
.nav-item a {
	margin-top: 3px;
	margin-bottom: 3px;
	width: 200px;
}

.nav-item a.active {
	background: green;
	color: white;
}
</style>
<head>

<title></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">

<!-- all css here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/css/icofont.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/bundle.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet"
	href="assets/plugin/jquery-toast/src/jquery.toast.css">
<script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>

<style>
hr {
	margin: 22px !important;
	padding: 0px !important;
	border-bottom: 1px solid !important;
	border-top: 0px !important;
}

.error {
	color: red !important;
}
</style>
</head>

<body>

	<%@include file="include/header.jsp"%>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<section style="background-color: #eee;">
		<div class="container py-5">


			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center" id="img1"></div>
						<!-- Nav tabs -->
						<ul class="nav nav-tabs flex-column text-center" role="tablist">
							<li class="nav-item"><a
								class="active btn btn-outline-success" data-bs-toggle="tab"
								href="#home">Change Password</a></li>
							<li class="nav-item"><a class="btn btn-outline-success"
								data-bs-toggle="tab" href="#menu1">Edit</a></li>
							<li class="nav-item"><a class="btn btn-outline-success"
								data-bs-toggle="tab" href="#menu2">Orders</a></li>
						</ul>

					</div>
					<div class="card mb-4 mb-lg-0">
						<div class="card-body p-0">
							<ul class="list-group list-group-flush rounded-3">
								<li
									class="list-group-item d-flex justify-content-between align-items-center p-3">
									<i class="fas fa-globe fa-lg text-warning"></i>

								</li>
							</ul>
						</div>
					</div>

				</div>
				<div class="col-lg-8">
					<div class="card mb-4">

						<!-- Tab panes -->
						<div class="tab-content">
							<div id="home" class="container tab-pane active">
								<br>
								<div class="col-md-12 col-12  ms-auto me-auto">
									<div class="login">
										<div class="login-form-container" style="border: none !important;">
											<div class="login-form">
												<form id="validate">
													<input type="password" name="oldPass" placeholder="Old Password" id="oldPass" required>
													<input type="hidden" name="event" value="changePassword">
													<input type="text" name="newPass" placeholder="New Password" id="newPass" required>
													<input type="text" name="confirm" placeholder="Confirm Password" id="confirm" required>
													<div class="button-box">
														<div class="login-toggle-btn ">
															<div class="buttonlogin">
																<button type="submit" class="default-btn ">Change
																	Password</button>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="menu1" class="container tab-pane fade">
								<br>

								<div class="card-body">
									<form id="Editmyform">
										<div class="row">
											<div class="col-sm-3">
												<p class="mb-0">Full Name</p>
											</div>
											<div class="col-sm-9">
												<input type="text" name="FullName" class="text-muted mb-0"
													id="FullName" value="" required> <input
													type="hidden" name="event" value="Edituser">
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-sm-3">
												<p class="mb-0">Email</p>
											</div>
											<div class="col-sm-9">
												<input type="email" name="email" class="text-muted mb-0"
													id="email" required>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-sm-3">
												<p class="mb-0">Phone</p>
											</div>
											<div class="col-sm-9">
												<input type="text" name="Phone" class="text-muted mb-0"
													id="Phone" required>
											</div>
										</div>
										<hr>

										<div class="row">
											<div class="col-sm-3">
												<p class="mb-0">Address</p>
											</div>
											<div class="col-sm-9">
												<input type="text" name="address" class="text-muted mb-0"
													id="address" required>
											</div>
										</div>
										<div class="button-box text-align:center">
											<div class="login-toggle-btn ">
												<div class="buttonlogin">
													<button type="submit" class="default-btn ">Update</button>
												</div>
											</div>
										</div>
									</form>
								</div>

							</div>
							<div id="menu2" class="container tab-pane fade">							
								<div class="table-content table-responsive" style="padding:3px 3px;!important"  >
                                <table >
                                    <thead>
                                        <tr>
                                        	<th></th>                  
                                            <th>images</th>
                                            <th>Item Name</th>
                                            <th>Order Amount</th>
                                            <th>Quantity</th>
                                            <th>Date</th>
                                            <th>Invoice</th>
                                        </tr>
                                    </thead>
                                    <tbody   id="orderBody">
                                        
                                       
                                       
                                    </tbody>
                                </table>
                            </div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>







	<!--Add JavaScript Files-->
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
	<script src="assets/plugin/jquery-validation/dist/additional-methods.js"></script>
	<script src="assets/plugin/jquery-validation/dist/jquery.validate.js"></script>
	<!-- toast -->
	<script src="assets/plugin/jquery-toast/dist/jquery.toast.min.js"></script>


	<!--Footer Start-->
	<%@include file="include/footer.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
	
	        	let event ="event=getCust";
	        	$.ajax({
	    			url:"loginController",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){
	    				let s="";
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    				s+="<img src='./customerImg/custImg/"+data[0].image+"' alt='avatar'  class='rounded-circle img-fluid' style='width: 150px;'>";
	    				s+="<h5 class='my-3'>"+data[0].name+"</h5>";
	    				$("#name").html();
	    				$("#FullName").val(data[0].name);
	    				$("#email").val(data[0].email);
	    				$("#address").val(data[0].address);
	    				$("#Phone").val(data[0].cno);
	    					}
	    				}
	    				$('#img1').html(s);
	    	  		
	    			},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    				console.log("error...")
	    			}
	    	    });
			  });
		</script>

	<script type="text/javascript">
		$(document).ready(function() {
				jQuery.validator.addMethod("notEqual", function(value, element, param) {
					 return this.optional(element) || value != $(param).val();
					}, "This has to be different...");
		   		$("#validate").validate({
		   			
			      	rules: {
			      		oldPass: 'required',
			      		newPass: {
			            	required: true,
			            	notEqual : "#oldPass",
			         	},
			         	confirm: {
			            	required: true,
			            	equalTo : "#newPass",
			         	},
			      	},
			      	messages: {
			      		oldPass: 'Current Password is required *',
					   	newPass: {
					   		required : 'Confirm Password is required *',
					   		notEqual : 'New password should not match with old one *',
					   	},
					   	confirm: {
					   		required : 'Confirm Password is required *',
					   		equalTo : 'Password not matching *',
					   	}
					},
			   });
			});
		</script>
	<script>
		  	$(document).ready(function(){				    
		  		console.log("page is ready .....");
		  		$("#validate").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"loginController",
		  				data:f,
		  				type:'POST',
		  				dataType:"json",
		  				success:function(data,textStatus,jqXHR){		  				
		  					if(data.trim() =='done'){
			  					$.toast({
			  					    text: "Password Successfully Changed!", 
			  					    heading: 'Success...', 
			  					    icon: 'success',
			  					    showHideTransition: 'slide', 
			  					    allowToastClose: true, 
			  					    hideAfter: 3000, 
			  					    stack: 10, 
			  					    position: 'top-center',            
			  					    textAlign: 'left',  
			  					    loader: true,  
			  					    loaderBg: '#24ffb6',
			  					});
			  					$('#validate')[0].reset();		  				
			  		  		}else if(data.trim() ==='error1'){
					  		  		$.toast({
					  		  	    text: "Old Password & New Password Should not Be Same!", 
					  		  	    heading: 'Failed...', 
					  		  	    icon: 'error', 
					  		  	    showHideTransition: 'slide', 
					  		  	    allowToastClose: true, 
					  		  	    hideAfter: 3000, 
					  		  	    stack: 10, 
					  		  	    position: 'top-center',         
					  		  	    textAlign: 'left',  
					  		  	    loader: true,
					  		  	    loaderBg: '#9EC600', 
					  		  	});
			  		  		}else if(data.trim() ==='error2'){
					  		  		$.toast({
					  		  	    text: "New Password & Confirm Password Should Be Same!", 
					  		  	    heading: 'Failed...', 
					  		  	    icon: 'error', 
					  		  	    showHideTransition: 'slide', 
					  		  	    allowToastClose: true, 
					  		  	    hideAfter: 3000, 
					  		  	    stack: 10, 
					  		  	    position: 'top-center',         
					  		  	    textAlign: 'left',  
					  		  	    loader: true,
					  		  	    loaderBg: '#9EC600', 
					  		  	});
			  		  		}else if(data.trim() ==='error3'){
					  		  		$.toast({
					  		  	    text: "Old Password Not Matched!", 
					  		  	    heading: 'Failed...', 
					  		  	    icon: 'error', 
					  		  	    showHideTransition: 'slide', 
					  		  	    allowToastClose: true, 
					  		  	    hideAfter: 3000, 
					  		  	    stack: 10, 
					  		  	    position: 'top-center',         
					  		  	    textAlign: 'left',  
					  		  	    loader: true,
					  		  	    loaderBg: '#9EC600', 
					  		  	});
			  		  		}
		  				},
		  				error:function(jqXHR,textStatus,errorThrown){
							console.log("error...")
							$.toast({
				  		  	    text: "Something went wrong on server!", 
				  		  	    heading: 'Failed...', 
				  		  	    icon: 'error', 
				  		  	    showHideTransition: 'slide', 
				  		  	    allowToastClose: true, 
				  		  	    hideAfter: 3000, 
				  		  	    stack: 10, 
				  		  	    position: 'top-center',         
				  		  	    textAlign: 'left',  
				  		  	    loader: true,
				  		  	    loaderBg: '#9EC600', 
				  		  	});
		  				} 				
		  			});		  			
		  		});
		  	});
		  </script>
	<script>
		  	$(document).ready(function(){				    
		  		console.log("page is ready .....");
		  		$("#Editmyform").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"loginController",
		  				data:f,
		  				type:'POST',
		  				dataType:"json",
		  				success:function(data,textStatus,jqXHR){		  				
		  					if(data.trim() =='done'){
			  					$.toast({
			  					    text: "Update Successfully!", 
			  					    heading: 'Success...', 
			  					    icon: 'success',
			  					    showHideTransition: 'slide', 
			  					    allowToastClose: true, 
			  					    hideAfter: 3000, 
			  					    stack: 10, 
			  					    position: 'top-center',            
			  					    textAlign: 'left',  
			  					    loader: true,  
			  					    loaderBg: '#24ffb6',
			  					});
			  							  				
			  		  		}
		  				},
		  				error:function(jqXHR,textStatus,errorThrown){
							console.log("error...")
							$.toast({
				  		  	    text: "Something went wrong on server!", 
				  		  	    heading: 'Failed...', 
				  		  	    icon: 'error', 
				  		  	    showHideTransition: 'slide', 
				  		  	    allowToastClose: true, 
				  		  	    hideAfter: 3000, 
				  		  	    stack: 10, 
				  		  	    position: 'top-center',         
				  		  	    textAlign: 'left',  
				  		  	    loader: true,
				  		  	    loaderBg: '#9EC600', 
				  		  	});
		  				} 				
		  			});		  			
		  		});
		  	});
		  </script>
		  
		  <script>
			 $(document).ready(function() {
	        	let event = "event=viewOrderByCustomerId";
				$.ajax({
	    			url:"checkoutServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				let s="";
	    				let i=1;
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    					  s+="<tr >";	 
	    					  s+="<td>"+i+"</td>";
	    					  s+="<td class='product-thumbnail'><img src='admin/assets/itemImg/"+data[key].item_image+"'alt='' width='70' height='65'></td>";
	    					  s+="<td class='product-name'>"+data[key].item_name+"</td>";
	    					  s+="<td class='product-price-cart'><span class='amount'>$ "+data[key].order_Amount+"</span></td>";
	    					  s+="<td class='product-quantity'>"+data[key].qty+"</td>";
	    					  s+="<td>"+data[key].date+"</td>></tr>";
	    			          i++;
	    			       }
	    				} 
	    				$('#orderBody').html(s);
	    			},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    			}
	    	});
	        });
	     </script>
</body>


</html>