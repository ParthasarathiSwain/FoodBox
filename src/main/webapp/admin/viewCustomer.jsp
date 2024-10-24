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
              <div class="breadcrumb-title pe-3">Customers</div>
              <div class="ps-3">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page"> View Customers </li>
                  </ol>
                </nav>
              </div>
              
            </div>
            <!--end breadcrumb-->

               <div class="card">
                 <div class="card-body">
                   <div class="d-flex align-items-center">
                      <h5 class="mb-0">Customer Details</h5>
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
                          <th>Name</th>
                          <th>Email</th>
                          <th>Phone No</th>
                          <th>Address</th>
                          <th>Registration Date</th>
                          <th>Actions</th>
                         </tr>
                       </thead>
                       <tbody id="view_customer">
                        
                        
                        
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
		               <form class="row g-3" action="../loginController" method="post" enctype="multipart/form-data">
		                   <div class="col-12">
		                     <label class="form-label">Name</label>
		                     <input type="text" class="form-control" name="name" id="name" >
		                     <input type="hidden" name="event" value="updateCustomer">
							 <input type="hidden" id="id" name="id" value="">
		                   </div>
		                   <div class="col-12">
		                     <label class="form-label">Email</label>
		                     <input type="text" class="form-control" name="email" id="email">
		                   </div>
		                   <div class="col-12">
		                     <label class="form-label">Contact No</label>
		                     <input type="text" class="form-control" name="cno" id="cno">
		                   </div>
		                   <div class="col-12">
		                      <label class="form-label">Address</label>
		                      <input type="text" class="form-control" name="address" id="address">
		                   </div>
		                   <div class="col-12">
		                      <label class="form-label">Image</label>
		                      <input class="form-control"  name="image" type="file">
		                   </div>
		                   <div class="col-12">
		                      <input type="submit"  value="Update Customer" class="btn btn-primary px-4">
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
 
<script type="text/javascript">
		$(document).ready(function() {
				getData();
				function getData(){
	        	let event ="event=getCustomers";
	        	$.ajax({
	    			url:"../loginController",
	    			data:event,
	    			type:"POST",
	    			dataType:"json",
	    			success:function(data,textStatus,jqXHR){ 					 
	    				 let s="";
	    				for (var key in data) {
	    					if (data.hasOwnProperty(key)) {
	    					  s+="<tr>";
	    					  s+="<td>"+data[key].id+"</td>";
	    					  s+="<td><div class='d-flex align-items-center gap-3 cursor-pointer'>";
	    					  s+="<img src='../customerImg/custImg/"+data[key].image+"'class='rounded-circle' width='44' height='44' alt=''>";
	    					  s+="<div class=''><p class='mb-0'>"+data[key].name+"</p></div></div> </td>";
	    					  s+="<td>"+data[key].email+"</td>";
	    					  s+="<td>"+data[key].cno+"</td>";
	    					  s+="<td>"+data[key].address+"</td>";
	    					  s+="<td>"+data[key].regiDate+"</td>";
	    					  s+="<td><div class='table-actions d-flex align-items-center gap-3 fs-6'>";
	    					  s+="<a  class='text-info customer_edit' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Edit' data-id='"+data[key].id+"' id='"+data[key].id+"'><i class='bi bi-pencil-fill'></i></a>";
	    					  s+="<a  class='text-danger customer_delete' data-bs-toggle='tooltip' data-bs-placement='bottom' title='Delete' data-id='"+data[key].id+"' id='"+data[key].id+"'><i class='bi bi-trash-fill'></i></a>";
	    					  s+="</div></td></tr>";
	    					}
	    				}
	    				$('#view_customer').html(s);
	    				console.log("success...")
	    	  		},
	    		error:function(jqXHR,textStatus,errorThrown){
	    			console.log(jqXHR.responseText);
	    				console.log("error...")
	    			}
	    	    });
			  }
				 $(document).on('click', '.customer_delete', function() {
					 custId = $(this).attr('id');
	                 if (confirm('Are you sure you want to delete this?')) {
	              $.ajax({
					    type:'POST',
					    url:'../loginController',
						data:{'custId':custId,'event':'customer_delete'},
						method:'POST',
						dataType:'JSON',
						success:function(data,textStatus,jqXHR){
	  						if(data.trim() ==='done'){
	  							alert('Successfully Deleted!');
		  		  				$('#msg').html("");
		  		  			    $('#view_customer').html('');
		  		  			    getData();
	  		  				}else{
		  		  				alert('Something went wrong on server!');
		  		  			}
	  				},
					error:function(jqXHR,textStatus,errorThrown){
						console.log("error...");
						alert('Something went wrong on server!');
	  		  			}
					    });	
	                	} //confirm end   
					 });
	        });
		</script>
		<script>
				  $(document).on('click', '.customer_edit', function() {
                	 id = $(this).attr('id');               	 
                	$("#editModal").modal("show");
				$.ajax({
				    type:'POST',
				    url:'../loginController',
					data:{'custId':id,'event':'fatchCustomerById'},
					method:'POST',
					dataType:'JSON',
					success:function(data,textStatus,jqXHR){
						console.log(data);
						$("#id").val(data[0].id);
	    				$("#name").val(data[0].name);
	    				$("#address").val(data[0].address);
	    				$("#cno").val(data[0].cno);
	    				$("#email").val(data[0].email);
  				},
				error:function(jqXHR,textStatus,errorThrown){
					console.log("error...");
  					}
				    });	
                	   
				 });
           </script>
</body>

</html>