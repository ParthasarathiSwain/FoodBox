<%
    String hotel_id = request.getParameter("hotel_id");
%>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Details</title>
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
		<br><br><br>
        <div class="shop-page-wrapper shop-page-padding ptb-100">
            <div class="container-fluid">
                <div class="row gy-5">
                    <div class="col-lg-3 order-2 order-lg-1">
                        <div class="shop-sidebar mr-50">
                            <div class="sidebar-widget mb-50">
                                <h3 class="sidebar-title">Search Products</h3>
                                <div class="sidebar-search">
                                    <form action="#">
                                        <input placeholder="Search Products..." type="text">
                                        <button><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                           
                            <div class="sidebar-widget mb-45">
                                <h3 class="sidebar-title">Categories</h3>
                                <div class="sidebar-categories">
                                    <ul id="view_Category">
                                        
                                    </ul>
                                </div>
                            </div>
                         </div>
                    </div>
                    <div class="col-lg-9 order-1 order-lg-2">
                        <div class="shop-product-wrapper res-xl">
                            <div class="shop-bar-area">
                                
                                <div class="shop-product-content tab-content">
                                    <div id="grid-sidebar11" class="tab-pane fade">
                                        <div class="row">
                                            
                                           
                                           
                                          
                                        </div>
                                    </div>
                                    <div id="grid-sidebar12" class="tab-pane fade active show">
                                        <div class="row" id="items">                                          
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination-style mt-10 text-center">
                            <ul>
                                <li><a href="#"><i class="ti-angle-left"></i></a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">19</a></li>
                                <li class="active"><a href="#"><i class="ti-angle-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Start -->
		<%@include file="include/footer.jsp" %>
		<!--Footer End  -->
      
		<!-- modal Start-->
		
			
			<!-- Modal -->
			<div class="modal fade" id="myModal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
				  <div class="modal-dialog modal-dialog-centered">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalToggleLabel">Set Quantity</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <form method="post" id="myform" class="form-horizontal"  >
				      <div class="modal-body" >
				     	<div>
				     		<table >
				     			<tbody class="tbodyimg">
									
								</tbody>
							</table>
						</div>
					 <div class="form-group">
						<input type="hidden" name="hotelId" id="hotelId" >
						<input type="hidden" name="itemId" id="itemId" >
						<input type="hidden" name="event" value="addToCart">
					 </div>
					  
					 <div class="form-group">
					 <h5 id="itemName2"></h5>
					 <h5 >Price :<strong id="itemPrice"></strong></h5>
					 <input type="hidden" name="unitprice" id="unitprice" value="">
						<label for="" >
							<b>Quantity</b>
						</label>
					    <div >
							<input type="number" name="qty" id="qty" class="form-control" min="1" value="1"/>
						</div>			
					</div>
				</div>
					<div class="modal-footer text-center ">
				      	<button type="submit" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-dismiss="modal"><i class="ti-shopping-cart"></i>Add To Cart</button>
				    </div>
				 </form>
				    </div>
				  </div>
				</div>
		<!-- modal End-->
		
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
  		$("#qty").change(function () {
  			
  			const price=$('#unitprice').val();  			
  			$('#itemPrice').html(($(this).val()*price)); 
  		});
  	});
  </script>
        <script>
	  		$(document).ready(function(){	
	  			var hotel_id=<%=hotel_id %>	  			
			  		$.ajax({
					    type:'POST',
					    url:'itemServlet',
						data:{'hotel_id':hotel_id,'event':'getItemByHotelId'},
						method:'POST',
						dataType:'JSON',
			  				success:function(data,textStatus,jqXHR){ 			  					
			  					 let i=1;
			  					 let s="";
			  					 for (var key in data) {
			  						if (data.hasOwnProperty(key)) {
			  							 s+="<div class='col-md-12 col-xl-6'>";
			  							 s+="<div class='product-wrapper mb-30 single-product-list product-list-right-pr mb-60'>";
			  							 s+="<div class='product-img list-img-width'>";
			  							 s+="<a href='#'>";
			  							 s+="<img src='admin/assets/itemImg/"+data[key].item_image+"' alt=''>";
			  							 s+="</a>";
			  							 s+=" <span>hot</span>";
			  							 s+="<div class='product-action-list-style'>";
			  							 
			  							 s+="</div></div>";			  										  							 
			  							 s+="<div class='product-content-list'>";
			  							 s+="<div class='product-list-info'>";
			  							 s+="<h4><a href='#'>"+data[key].item_name+"</a></h4>";
			  							 s+=" <span>$"+data[key].item_price+"</span>";
			  							 s+="<p>"+data[key].item_description+"</p></div>";
			  							 s+="<div class='product-list-cart-wishlist'>";  
			  							 s+="<div class='product-list-cart'>";
			  							 s+="<a class='btn-hover list-btn-style' id='"+data[key].item_id+ "' onclick='openModal(this.id)' href='#'>add to cart</a>";
				  				         s+="</div>";
				  				         s+="<div class='product-list-wishlist'>";
				  				         s+=" <a class='btn-hover list-btn-wishlist' href='#'><i class='pe-7s-like'></i></a>"; 
				  				         s+="</div></div></div></div></div>";								 			     						   
			  						}			  						
			  					}
			  					$('#items').html(s); 
			  					console.log('success..')
			  				},
							error:function(jqXHR,textStatus,errorThrown){
			  					console.log("error...")  					
			  				} 			
			  		});
			  	});
	  	</script>
	  	<script type="text/javascript">
			
			function openModal(item_id){
				var hotel_id=<%=hotel_id %>	
				$('#myModal').modal('show');
				$('#myModal').on("hidden.bs.modal", function() {
		              location.reload();;
		             }); 
				
				$.ajax({
				    type:'POST',
				    url:'itemServlet',
					data:{'hotel_id':hotel_id,'item_id':item_id,'event':'fatchItemByItem_IdandHotel_id'},
					method:'POST',
					dataType:'JSON',
					success:function(data,textStatus,jqXHR){
						var s2 = '';
						var s3='';
						var s4='';
						s2+="<tr><td><img src='admin/assets/itemImg/"+data[0].item_image+"' style='width:150px;height:120px;'></td></tr>";
						s3+="<b>"+data[0].item_name+"</b>";
						s4+=data[0].item_price;
						$("#hotelId").val(data[0].hotel_id); 
	    				 $("#itemId").val(data[0].item_id); 
	    				 $("#unitprice").val(data[0].item_price);	    					    				 
						 $('.tbodyimg').html(s2);
						 $('#itemName2').html(s3);
						 $('#itemPrice').html(s4);
  				},  								
				error:function(jqXHR,textStatus,errorThrown){
					console.log("error...")  					
	  			} 	
				});
			}       
		</script>
		 <script>
		  	$(document).ready(function(){
		  		$("#myform").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();			
		  			$.ajax({
		  				url:"cartServlet",
		  				data:f,
		  				type:'POST',
		  				success:function(data,textStatus,jqXHR){		  					
		  					if(data==="nocart"){
		  						window.location.href ="login.jsp"; 
		  					}
		  					else{
		  						var o = JSON.parse(data);
		  						$('#cartCounter').html(o.length); 		  					   
		  					}		  						
		  				},
						error:function(jqXHR,textStatus,errorThrown){							
		  					console.log("error...")		  					
		  				}
		  			})
		  		})
		  	})
		  </script>
  	
<script>
  	$(document).ready(function(){  		  		
  		getCategory();
  	});
  	    	
  	function getCategory()
  	{
  		  
  		let event ="event=getAllCategory";
    	$.ajax({
			url:"categoryServlet",
			data:event,
			type:"POST",
			dataType:"json",
			success:function(data,textStatus,jqXHR){ 					 
				console.log(data);	    				
				let s="";
				for (var key in data) {
					if (data.hasOwnProperty(key)) {	    					 	    					
					  s+="<li><a href='#' id='"+data[key].category_id+"' onclick='sortByCategory(this.id)'>"+data[key].category_name+"</a></li>";	    					    					  
					}
				}
				$('#view_Category').html(s);
				console.log("success...")
	  			},
				error:function(jqXHR,textStatus,errorThrown){
	  				console.log("error...")  					
	  			} 			
	  		});
  		
  	}
  	
  	
  	    
  	    
  	  function sortByCategory(category_id)
  	  {
  		var hotel_id=<%=hotel_id %>	
  		event = "sortByCategoryAndHotel";
  		$.ajax({
				url:"itemServlet",
				data:{"event":event,"category_id":category_id,"hotel_id":hotel_id},
				type:"POST",
				dataType:"json",
				success:function(data,textStatus,jqXHR){ 					 
					//console.log(data);
					let i=1;
					 let s="";
					for (var key in data) {
						if (data.hasOwnProperty(key)) {
							 s+="<div class='col-md-12 col-xl-6'>";
  							 s+="<div class='product-wrapper mb-30 single-product-list product-list-right-pr mb-60'>";
  							 s+="<div class='product-img list-img-width'>";
  							 s+="<a href='#'>";
  							 s+="<img src='admin/assets/itemImg/"+data[key].item_image+"' alt=''>";
  							 s+="</a>";
  							 s+=" <span>hot</span>";
  							 s+="<div class='product-action-list-style'>";
  							 
  							 s+="</div></div>";			  										  							 
  							 s+="<div class='product-content-list'>";
  							 s+="<div class='product-list-info'>";
  							 s+="<h4><a href='#'>"+data[key].item_name+"</a></h4>";
  							 s+=" <span>$"+data[key].item_price+"</span>";
  							 s+="<p>"+data[key].item_description+"</p></div>";
  							 s+="<div class='product-list-cart-wishlist'>";  
  							 s+="<div class='product-list-cart'>";
  							 s+=" <a class='btn-hover list-btn-style' id='"+data[key].item_id+ "' onclick='openModal(this.id)' href='#'>add to cart</a>";
	  				         s+="</div>";
	  				         s+="<div class='product-list-wishlist'>";
	  				         s+=" <a class='btn-hover list-btn-wishlist' href='#'><i class='pe-7s-like'></i></a>"; 
	  				         s+="</div></div></div></div></div>";								 										 			     						   
  						}
  					}
  					$('#items').html(s); 
					console.log("success...")
		  			
				},
			error:function(jqXHR,textStatus,errorThrown){
				console.log(jqXHR.responseText);
					console.log("error...")					
				}			
		}); 
  	  }
  </script>
        
    </body>
</html>
