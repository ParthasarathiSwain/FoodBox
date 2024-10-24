<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Cart</title>
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
        <script src="assets/js/vendor/modernizr-3.11.7.min.js"></script>
</head>
<body>
<!-- header start -->
       <%@include file="include/header.jsp" %>
        <!-- header end -->
        
        <!-- shopping-cart-area start -->
        <div class="cart-main-area pt-95 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <br><br>
                        <form action="#">
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                        	<th></th>                  
                                            <th>images</th>
                                            <th>Item Name</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th>remove</th>
                                        </tr>
                                    </thead>
                                    <tbody id="cartBody">
                                        
                                       
                                       
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="coupon-all">
                                        <div class="coupon">
                                            <input id="coupon_code" class="input-text" name="coupon_code" value="" placeholder="Coupon code" type="text">
											<input class="button" name="apply_coupon" value="Apply coupon" type="submit">
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 ms-auto">
                                    <div class="cart-page-total">
                                        <h2>Cart totals</h2>
                                        <ul>
                                            <li >Subtotal<span id="subtotal"></span></li>
                                            <li>Total<span id="nettotal"></span></li>
                                        </ul>
                                        <a href="Checkout.jsp">Proceed to checkout</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- shopping-cart-area end -->
        
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
        <!-- Footer Start -->
		<%@include file="include/footer.jsp" %>
		<!--Footer End  -->
		
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
	    					  s+="<td class='product-thumbnail'><img src='admin/assets/itemImg/"+data[key].item_image+"'alt='' width='70' height='65'></td>";
	    					  s+="<td class='product-name'>"+data[key].item_name+"</td>";
	    					  s+="<td class='product-price-cart'><span class='amount'>$ "+cartprice+"</span></td>";
	    					  
	    					  s+="<td class='product-quantity'> <input value='"+data[key].cart_qty+"' min='1' type='number'></td>";
	    					  s+="<td>"+data[key].cart_Amount+"</td>";
	    			          s+="<td class='product-remove '><a  class='text-danger item_delete' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Delete' data-id='"+data[key].item_id+"' id='"+data[key].item_id+"'>";
	    			          s+="<i class='pe-7s-close bg-danger text-white' ></i></td></a></tr>";
	    			          i++;
	    			          
	    					}
	    				} 
	    				$('#cartBody').html(s);
	    				$('#subtotal').html(subtotal);
	    				$('#nettotal').html(subtotal);
	    				
	    			},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    			}
	    	});
	        });
	     </script>
	     <script>
	     $(document).on('click', '.item_delete', function() {
			let itemId = $(this).attr('id');
			
             if (confirm('Are you sure you want to delete this?')) {
          $.ajax({
			    type:'POST',
			    url:'cartServlet',
				data:{'itemId':itemId,'event':'cart_delete'},
				method:'POST',
				dataType:'JSON',
				success:function(data,textStatus,jqXHR){
					location.reload(true);
				},
			error:function(jqXHR,textStatus,errorThrown){
				console.log("error...");
				
		  		  }
		    });	
          } //confirm end   
	  });
	     </script>
</body>
</html>