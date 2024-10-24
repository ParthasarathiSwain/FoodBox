<%@page import="Util.DbConnection" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Checkout</title>
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
        <link rel="stylesheet" href="assets/css/jquery-ui.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js"></script>
        <script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
</head>
<body>
		<!-- header start -->
       <%@include file="include/header.jsp" %>
        <!-- header end -->
         <!-- checkout-area start -->
            <div class="checkout-area ptb-100">
                <div class="container">
                   <br> <br> <br>
                        
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-12">
                            <form id="myform" method="POST">
                                <div class="checkbox-form">						
                                    <h3>Billing Details</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">
                                                <label>Country <span class="required">*</span></label>
                                                <select name="country_id">                                                 
                                                  <option>Choose Country</option>
													<%
													Connection con2 = DbConnection.getConnection();
												    String sql2="SELECT * FROM Country";
												    PreparedStatement ps2=con2.prepareStatement(sql2);  
												    
												    ResultSet rs2=ps2.executeQuery();  
												    while(rs2.next())
												    {
												    	%>
												    	<option name="country_id" value="<%=rs2.getInt(1) %>"><%=rs2.getString(2) %></option>
												    	<% 
												    }
												    %>
                                                </select> 										
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>First Name <span class="required">*</span></label>										
                                                <input type="text" name="fname" placeholder="John" required />
                                                <input type="hidden" name="event" value="PlaceOrder" />
                                                <input type="hidden" name="totalamount" id="totalamount" value="0" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>Last Name <span class="required">*</span></label>										
                                                <input type="text" name="lname" placeholder="Doe" required/>
                                            </div>
                                        </div>
                                         <div class="col-md-12">
                                            <div class="checkout-form-list">
                                                <label>Card Number <span class="required">*</span></label>										
                                                <input type="text" name="cardnum" placeholder="1234-5678-9012" required />
                                            </div>
                                        </div>
                                         <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>Expiry/Validity <span class="required">*</span></label>										
                                                <input type="date"/  name="exDate" required>
                                            </div>
                                        </div>
                                         <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>CVV <span class="required">*</span></label>										
                                                <input type="text" name="cvv" placeholder="8765" required />
                                            </div>
                                        </div>
                                        
                                       
                                        <div class="col-md-12">
                                            <div class="checkout-form-list">
                                                <h3>Delivery Address</h3>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>State / City <span class="required">*</span></label>										
                                                <input type="text" name="address"  placeholder="" required />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>Postcode / Zip <span class="required">*</span></label>										
                                                <input type="text" name="pincode" required/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>Email Address <span class="required">*</span></label>										
                                                <input type="email" name="email" required/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list">
                                                <label>Phone  <span class="required">*</span></label>										
                                                <input name="phnum" type="text" required/>
                                            </div>
                                        </div>
                                       								
                                    </div>
                                   											
                                </div>
                            
                        </div>	
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="your-order">
                                <h3>Your order</h3>
                                <div class="your-order-table table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                            	<th>No</th>
                                                <th class="product-name">Name</th>
                                                <th class="product-name">Price</th>
                                                <th class="product-name">Quantity</th>
                                                <th class="product-total">Total</th>
                                            </tr>							
                                        </thead>
                                        <tbody id="CheckoutItems">
                                            
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	
                                            </tr>
                                            <tr class="order-total">
                                            	<th></th>
                                            	<th></th>
                                            	<th></th>
                                                <th>Order Total</th>
                                                <td><strong><span class="amount" id="subtotal"></span></strong>
                                                </td>
                                            </tr>								
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment-method">
                                    <div class="payment-accordion">
                                        <div class="panel-group" id="faq">
                                           
                                            
                                           
                                        </div>
                                        <div class="order-button-payment">
                                            <input type="submit" value="Place order" />
                                        </div>								
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- checkout-area end -->	
        <!-- Footer Start -->
		<%@include file="include/footer.jsp" %>
		<!--Footer End  -->
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
			 $(document).ready(function() {
	        	let event = "event=viewCartIteam";
				$.ajax({
	    			url:"cartServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				let s="";
	    				let i=1;
	    				let subtotal=0;
	    				for (var key in data) {
	    					subtotal +=data[key].cart_Amount;
	    					if (data.hasOwnProperty(key)) {
	    					  let cartprice=(parseInt(data[key].cart_Amount)/parseInt(data[key].cart_qty));	    					      					  
	    					  s+="<tr>";	 
	    					  s+="<td>"+i+"</td>";	    					 
	    					  s+="<td class='product-name'>"+data[key].item_name+"</td>";
	    					  s+="<td class='product-total'><span class='amount'>$ "+cartprice+"</span></td>";	    					  
	    					  s+="<td class='product-total'><span class='amount'> "+data[key].cart_qty+"</span></td>";
	    					  s+="<td class='product-total'><span class='amount'>$ "+data[key].cart_Amount+"</span></td>";	    			        
	    			          s+="</tr>";
	    			          i++;	    			          
	    					}
	    				} 
	    				$('#CheckoutItems').html(s);
	    				$('#subtotal').html(subtotal);
	    				$('#totalamount').val(subtotal);
	    				
	    			},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    			}
	    	});
	        });
	     </script>
	     <script>
		  	$(document).ready(function(){
		  		console.log("page is ready .....")
		  		
		  		$("#myform").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"checkoutServlet",
		  				data:f,
		  				type:'POST',
		  				success:function(data,textStatus,jqXHR){
			  				if(data.trim() ==='done'){
			  					
			  					Swal.fire({
			  					  position: 'center',
			  					  icon: 'success',
			  					  title: 'Congratulations Your Order Has Been Successfully Placed!',
			  					  showConfirmButton: false,
			  					  timer: 3000
			  					})
			  					$('#myform')[0].reset();		  				
			  		  		}else{
			  		  	
			  		  		Swal.fire({
			  		  		  position: 'center',
			  		  		  icon: 'error',
			  		  		  title: 'Something Went Wrong!',
			  		  		  showConfirmButton: false,
			  		  		  timer: 3000
			  		  		})
			  		  		}
		  				},
		  				error:function(jqXHR,textStatus,errorThrown){
							console.log("error...")
							Swal.fire({
			  		  		  position: 'center',
			  		  		  icon: 'error',
			  		  		  title: 'Something Went Wrong!',
			  		  		  showConfirmButton: false,
			  		  		  timer: 3000
			  		  		})
		  				} 				
		  			});		  			
		  		});
		  	});
		  </script>
 
</body>
</html>