<%@page import="Util.DbConnection" %>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en" class="minimal-theme">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="assets/images/foodboxlogo.png" type="image/png" />
  <!--plugins-->
  <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
  <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
  <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
  <!-- Bootstrap CSS -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/bootstrap-extended.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet" />
  <link href="assets/css/icons.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <!--toast-->
  <link href="assets/plugins/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
  <link href="assets/plugins/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet" />
  <!--Theme Styles-->
  <link href="assets/css/dark-theme.css" rel="stylesheet" />
  <link href="assets/css/light-theme.css" rel="stylesheet" />
  <link href="assets/css/semi-dark.css" rel="stylesheet" />
  <link href="assets/css/header-colors.css" rel="stylesheet" />

  <title>Foodbox</title>
</head>

<body>


  <!--start wrapper-->
  <div class="wrapper">
     <%@include file="include/header.jsp" %>
     <%@include file="include/sidebar.jsp" %>
       <!--start content-->
          <main class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
              <div class="breadcrumb-title pe-3">Item</div>
              <div class="ps-3">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page"> View Item </li>
                  </ol>
                </nav>
              </div>
             
            </div>
            <!--end breadcrumb-->

               <div class="card">
                 <div class="card-body">
                   <div class="d-flex align-items-center">
                      <h5 class="mb-0">Item Details</h5>
                        &nbsp; &nbsp; &nbsp; &nbsp;  <h2 id="msg"></h2>
                       <form class="ms-auto position-relative">
                         <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i class="bi bi-search"></i></div>
                         <input class="form-control ps-5" type="text" placeholder="search">
                       </form>
                   </div>
                   <div class="table-responsive mt-3">
                     <table class="table align-middle">
                       <thead class="table-secondary">
                         <tr>
                          <th>Id</th>
                          <th>Item Name</th>
                          <th>Price</th>
                          <th>Description</th>                         
                          <th>Category</th>
                          <th>Hotel Name</th>
                          <th>Status</th>
                          <th>Actions</th>
                         </tr>
                       </thead>
                       <tbody id="view_Item">
                        
                        
                        
                       </tbody>
                     </table>
                   </div>
                 </div>
               </div>



           
          </main>
       <!--end page main-->


       <!--start overlay-->
        <div class="overlay nav-toggle-icon"></div>
       <!--end overlay-->

        <!--Start Back To Top Button-->
        <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
        <!--End Back To Top Button-->
        
        <!--start switcher-->
       <div class="switcher-body">
        <button class="btn btn-primary btn-switcher shadow-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><i class="bi bi-paint-bucket me-0"></i></button>
        <div class="offcanvas offcanvas-end shadow border-start-0 p-2" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling">
          <div class="offcanvas-header border-bottom">
            <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Theme Customizer</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
          </div>
          <div class="offcanvas-body">
            <h6 class="mb-0">Theme Variation</h6>
            <hr>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1">
              <label class="form-check-label" for="LightTheme">Light</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2">
              <label class="form-check-label" for="DarkTheme">Dark</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDarkTheme" value="option3">
              <label class="form-check-label" for="SemiDarkTheme">Semi Dark</label>
            </div>
            <hr>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="MinimalTheme" value="option3" checked>
              <label class="form-check-label" for="MinimalTheme">Minimal Theme</label>
            </div>
            <hr/>
            <h6 class="mb-0">Header Colors</h6>
            <hr/>
            <div class="header-colors-indigators">
              <div class="row row-cols-auto g-3">
                <div class="col">
                  <div class="indigator headercolor1" id="headercolor1"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor2" id="headercolor2"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor3" id="headercolor3"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor4" id="headercolor4"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor5" id="headercolor5"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor6" id="headercolor6"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor7" id="headercolor7"></div>
                </div>
                <div class="col">
                  <div class="indigator headercolor8" id="headercolor8"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
       </div>
       <!--end switcher-->

  </div>
  <!--end wrapper-->
  <!--Edit Modal dept-->
		<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Edit Customer</h5>
		        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		       <div class="card-body">
		           <div class="border p-3 rounded">
		              <form class="row g-3"  id="myform"  method="post"  enctype="multipart/form-data" >
                        <div class="col-12">
                          <label class="form-label">Item Name</label>
                          <input type="text" name="itemname" id="itemname" class="form-control"  required>
                          <input type="hidden" name="event" value="updateItem">
                           <input type="hidden" name="itemid"  id="itemid" value="">
                        </div>
                          
                        <div class="col-12">
                         <select name="category"  class="form-control" id="category" required>
							<option>Choose Caterory</option>
								<%
									Connection con1 = DbConnection.getConnection();
									String sql1="SELECT *  FROM category";
									PreparedStatement ps1=con1.prepareStatement(sql1);  
									ResultSet rs1=ps1.executeQuery();  
									while(rs1.next())
									{
									  %>
									   <option   value="<%=rs1.getInt(1) %>"><%=rs1.getString(2) %></option>
									  <% 
									 }
								 %>
						</select>
                        <div class="col-12">
                          <label class="form-label">Item Description</label>
                          <textarea type="text" class="form-control"  name="itemdesc" id="itemdesc" required></textarea>
                        </div>
                        <div class="col-12">
                          <label class="form-label">Item Price</label>
                          <input type="text" class="form-control"  name="itemprice" id="itemprice"  required>
                        </div>
                        <br>
                        <div class="col-12">
                         <select name="hotel"  class="form-control" id="hotel" required>
                           <option>Choose Hotel</option>
								<%
									Connection con2 = DbConnection.getConnection();
									String sql2="SELECT hotel_id ,hotel_name  FROM hotel";
									PreparedStatement ps2=con2.prepareStatement(sql2);  
									ResultSet rs2=ps2.executeQuery();  
									while(rs2.next())
									{
									  %>
									   <option   value="<%=rs2.getInt(1) %>"><%=rs2.getString(2) %></option>
									  <% 
									 }
								 %>
						</select>
                        </div>
                        <div class="col-12">
                          <label class="form-label">Item Image</label>
                          <input type="file" class="form-control"  name="image" required>
                        </div>
                        <br>
                        <div class="col-12">
                          <input type="submit" class="btn btn-primary px-4"  id="submit" value="Update Item">
                        </div>
                  </form>
		            </div>
		        </div>
		         
		      </div>
		    </div>
		  </div>
		</div>

  <!-- Bootstrap bundle JS -->
  <script src="assets/js/bootstrap.bundle.min.js"></script>
  <!--plugins-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
  <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
  <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
  <script src="assets/js/pace.min.js"></script>
  <!--app-->
  <script src="assets/js/app.js"></script>
  
   <!-- toast -->
  <script src="assets/plugins/jquery-toast/src/jquery.toast.js"></script>
  <script src="assets/plugins/jquery-toast/dist/jquery.toast.min.js"></script>
 
<script type="text/javascript">
		$(document).ready(function() {
				getData();
				function getData(){
	        	let event ="event=getItems";
	        	$.ajax({
	    			url:"../itemServlet",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				console.log(data);	    				
	    				 let s="";
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    					  s+="<tr>";
	    					  s+="<td>"+data[key].item_id+"</td>";
	    					  s+="<td><div class='d-flex align-items-center gap-3 cursor-pointer'>";
	    					  s+="<img src='assets/itemImg/"+data[key].item_image+"'class='rounded-circle' width='55' height='55' alt=''>";
	    					  s+="<div class=''><p class='mb-0'>"+data[key].item_name+"</p></div></div> </td>";
	    					  s+="<td>"+data[key].item_price+"</td>";
	    					  s+="<td>"+data[key].item_description+"</td>";	    					  
	    					  s+="<td>"+data[key].category_name+"</td>";
	    					  s+="<td>"+data[key].hotel_name+"</td>";
	    					  s+="<td>"+data[key].item_status+"</td>";
	    					  s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
	    					  s+="<a  class='text-info item_edit' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Edit' data-id='"+data[key].item_id+"' id='"+data[key].item_id+"'><i class='bi bi-pencil-fill'></i></a>";
	    					  s+="<a  class='text-danger item_delete' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Delete' data-id='"+data[key].item_id+"' id='"+data[key].item_id+"'><i class='bi bi-trash-fill'></i></a>";
	    					  s+="</div></td></tr>";
	    					}
	    				}
	    				$('#view_Item').html(s);
	    				console.log("success...")
	    	  		},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    				console.log("error...")
	    			}
	    	    });
			  }
				 $(document).on('click', '.item_delete', function() {
					 itemId = $(this).attr('id');
	                 if (confirm('Are you sure you want to delete this?')) {
	              $.ajax({
					    type:'POST',
					    url:'../itemServlet',
						data:{'itemId':itemId,'event':'item_delete'},
						method:'POST',
						dataType:'JSON',
						success:function(data,textStatus,jqXHR){
	  						if(data.trim() ==='done'){	  							
	  							$.toast({
	  		  					    text: "Successfully Deleted!", 
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
		  		  				$('#msg').html("");
		  		  			    $('#view_Item').html('');
		  		  			    getData();
	  		  				}else{
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
	  				},
					error:function(jqXHR,textStatus,errorThrown){
						console.log("error...");
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
	              } //confirm end   
			  });
	        });
		</script>
		<script>
			 $(document).on('click', '.item_edit', function() {
				    itemId = $(this).attr('id');                	 
                	$("#editModal").modal("show");
				$.ajax({
				    type:'POST',
				    url:'../itemServlet',
					data:{'itemId':itemId,'event':'fatchItemById'},
					method:'POST',
					dataType:'JSON',
					success:function(data,textStatus,jqXHR){
						console.log(data);
						$("#itemid").val(data[0].item_id);
	    				$("#itemname").val(data[0].item_name);
	    				$("#category").val(data[0].category_id);
	    				$("#itemdesc").val(data[0].item_description);
	    				$("#itemprice").val(data[0].item_price);
	    				$("#hotel").val(data[0].hotel_id);
  				},
				error:function(jqXHR,textStatus,errorThrown){
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
     </script>
     <script>
		  	$(document).ready(function(){
		  		console.log("page is ready .....")
		  		
		  		$("#myform").on('submit',function(event){
		  			event.preventDefault();
					var f=new FormData($(this)[0]);
					$.ajax({
		  				url:"../itemServlet",
		  				data:f,
		  				type:'POST',
		  				 async: false,
		  				success:function(data,textStatus,jqXHR){
			  				if(data.trim() ==='done'){			  					
			  					window.location.href = 'viewItem.jsp';		  				
			  		  		}else{
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
		  				},
		  				cache: false,
		  		        contentType: false,
		  		        processData: false,
		  		        
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
		  			return false;
		  		});
		  	});
		  </script>
     
     
</body>

</html>