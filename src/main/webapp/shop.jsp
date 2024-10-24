<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Foodbox-Shop</title>
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
                                            <div class="col-lg-6 col-md-6">
                                                <div class="product-wrapper mb-30">
                                                    <div class="product-img">
                                                        <a href="#">
                                                            <img src="assets/img/product/fashion-colorful/1.jpg" alt="">
                                                        </a>
                                                        <span>hot</span>
                                                        <div class="product-action">
                                                            <a class="animate-left" title="Wishlist" href="#">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                            <a class="animate-top" title="Add To Cart" href="#">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                            <a class="animate-right" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h4><a href="#">Homme Tapered Smart </a></h4>
                                                        <span>$115.00</span>
                                                    </div>
                                                </div>
                                           </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="product-wrapper mb-30">
                                                    <div class="product-img">
                                                        <a href="#">
                                                            <img src="assets/img/product/fashion-colorful/2.jpg" alt="">
                                                        </a>
                                                        <div class="product-action">
                                                            <a class="animate-left" title="Wishlist" href="#">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                            <a class="animate-top" title="Add To Cart" href="#">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                            <a class="animate-right" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h4><a href="#">Denim Stonewash</a></h4>
                                                        <span>$115.00</span>
                                                    </div>
                                                </div>
                                           </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="product-wrapper mb-30">
                                                    <div class="product-img">
                                                        <a href="#">
                                                            <img src="assets/img/product/fashion-colorful/3.jpg" alt="">
                                                        </a>
                                                        <span>new</span>
                                                        <div class="product-action">
                                                            <a class="animate-left" title="Wishlist" href="#">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                            <a class="animate-top" title="Add To Cart" href="#">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                            <a class="animate-right" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h4><a href="#">Mini Waffle 5 Pack</a></h4>
                                                        <span>$115.00</span>
                                                    </div>
                                                </div>
                                           </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="product-wrapper mb-30">
                                                    <div class="product-img">
                                                        <a href="#">
                                                            <img src="assets/img/product/fashion-colorful/4.jpg" alt="">
                                                        </a>
                                                        <div class="product-action">
                                                            <a class="animate-left" title="Wishlist" href="#">
                                                                <i class="pe-7s-like"></i>
                                                            </a>
                                                            <a class="animate-top" title="Add To Cart" href="#">
                                                                <i class="pe-7s-cart"></i>
                                                            </a>
                                                            <a class="animate-right" title="Quick View" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">
                                                                <i class="pe-7s-look"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h4><a href="#">Dagger Smart Trousers</a></h4>
                                                        <span>$115.00</span>
                                                    </div>
                                                </div>
                                           </div>
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
        <!-- modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span class="pe-7s-close" aria-hidden="true"></span>
            </button>
            <div class="modal-dialog modal-quickview-width" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="qwick-view-left">
                            <div class="quick-view-learg-img">
                                <div class="quick-view-tab-content tab-content">
                                    <div class="tab-pane active show fade" id="modal1" role="tabpanel">
                                        <img src="assets/img/quick-view/l1.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal2" role="tabpanel">
                                        <img src="assets/img/quick-view/l2.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal3" role="tabpanel">
                                        <img src="assets/img/quick-view/l3.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="quick-view-list nav" role="tablist">
                                <a class="active" href="#modal1" data-bs-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s1.jpg" alt="">
                                </a>
                                <a href="#modal2" data-bs-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s2.jpg" alt="">
                                </a>
                                <a href="#modal3" data-bs-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s3.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="qwick-view-right">
                            <div class="qwick-view-content">
                                <h3>Handcrafted Supper Mug</h3>
                                <div class="price">
                                    <span class="new">$90.00</span>
                                    <span class="old">$120.00  </span>
                                </div>
                                <div class="rating-number">
                                    <div class="quick-view-rating">
                                        <i class="pe-7s-star"></i>
                                        <i class="pe-7s-star"></i>
                                        <i class="pe-7s-star"></i>
                                        <i class="pe-7s-star"></i>
                                        <i class="pe-7s-star"></i>
                                    </div>
                                    <div class="quick-view-number">
                                        <span>2 Ratting (S)</span>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
                                <div class="quick-view-select">
                                    <div class="select-option-part">
                                        <label>Size*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">900</option>
                                            <option value="">700</option>
                                        </select>
                                    </div>
                                    <div class="select-option-part">
                                        <label>Color*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">orange</option>
                                            <option value="">pink</option>
                                            <option value="">yellow</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="quickview-plus-minus">
                                    <div class="cart-plus-minus">
                                        <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                                    </div>
                                    <div class="quickview-btn-cart">
                                        <a class="btn-hover-black" href="#">add to cart</a>
                                    </div>
                                    <div class="quickview-btn-wishlist">
                                        <a class="btn-hover" href="#"><i class="pe-7s-like"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- modal -->
        <div class="modal fade" id="exampleCompare" tabindex="-1" role="dialog" aria-hidden="true">
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span class="pe-7s-close" aria-hidden="true"></span>
            </button>
            <div class="modal-dialog modal-compare-width" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="#">
                            <div class="table-content compare-style table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>
                                                <a href="#">Remove <span>x</span></a>
                                                <img src="assets/img/cart/4.jpg" alt="">
                                                <p>Blush Sequin Top </p>
                                                <span>$75.99</span>
                                                <a class="compare-btn" href="#">Add to cart</a>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="compare-title"><h4>Description </h4></td>
                                            <td class="compare-dec compare-common">
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>Sku </h4></td>
                                            <td class="product-none compare-common">
                                                <p>-</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>Availability  </h4></td>
                                            <td class="compare-stock compare-common">
                                                <p>In stock</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>Weight   </h4></td>
                                            <td class="compare-none compare-common">
                                                <p>-</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>Dimensions   </h4></td>
                                            <td class="compare-stock compare-common">
                                                <p>N/A</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>brand   </h4></td>
                                            <td class="compare-brand compare-common">
                                                <p>HasTech</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>color   </h4></td>
                                            <td class="compare-color compare-common">
                                                <p>Grey, Light Yellow, Green, Blue, Purple, Black </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"><h4>size    </h4></td>
                                            <td class="compare-size compare-common">
                                                <p>XS, S, M, L, XL, XXL </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="compare-title"></td>
                                            <td class="compare-price compare-common">
                                                <p>$75.99 </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
		
		
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
  		getItems(); 		
  		getCategory();
  	});  	
  	function getItems()
  	{
  		let event="event=getItems";
  		$.ajax({
		    type:'POST',
		    url:'itemServlet',
			data:event,
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
  							 s+=" <a class='btn-hover list-btn-style' id='"+data[key].item_id+ "' onclick='openModal(this.id)' href='#'>add to cart</a>";
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
  	}
  	
  	
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
  		event = "sortByCategory";
  		$.ajax({
				url:"itemServlet",
				data:{"event":event,"category_id":category_id},
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
         
	 <script>
	  	$(document).ready(function(){  		  		
	  		$("#qty").change(function () {
	  			
	  			const price=$('#unitprice').val();  			
	  			$('#itemPrice').html(($(this).val()*price)); 
	  		});
	  	});
	  </script>
     <script type="text/javascript">			
			function openModal(item_id){				
				$('#myModal').modal('show');
				$('#myModal').on("hidden.bs.modal", function() {
		              location.reload();;
		             }); 				
				$.ajax({
				    type:'POST',
				    url:'itemServlet',
					data:{'item_id':item_id,'event':'FatchItemByItemId'},
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
    </body>
</html>
