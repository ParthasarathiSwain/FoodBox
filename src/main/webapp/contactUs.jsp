<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Foodbox-contactUs</title>
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
         <!--toast-->
	    <link href="assets/plugin/jquery-toast/src/jquery.toast.css" rel="stylesheet" />
	    <link href="assets/plugin/jquery-toast/dist/jquery.toast.min.css" rel="stylesheet" />
  <style>
  .input {
  transition: box-shadow 0.3s, border-color 0.3s!important;

  &:focus {
    box-shadow: 0 0 0 0.2rem rgba(88, 99, 248, 0.15)!important;
  }
}
  
  </style>
</head>
<body>
<%@include file="include/header.jsp" %>
	<br> <br> <br> <br> <br> <br> <br>

<div class="contact-1 py-4 md:py-12">
  <div class="container mx-auto px-4">
    <div class="xl:flex -mx-4">
      <div class="xl:w-10/12 xl:mx-auto px-4">

        <div class="xl:w-3/4 mb-4">
          <h1 class="text-3xl text-medium mb-4">We would love to hear from you</h1>
          <p class="text-xl mb-2">Please submit your information and we will get back to you.</p>
          <p>Call us at <a href="tel:+12314561231" class="text-indigo-600 border-b border-transparent hover:border-indigo-600 transition-colors duration-300">+1 231 456 1231</a></p>
        </div>

        <div class="md:flex md:-mx-4 mt-4 md:mt-10">

          <div class="md:w-2/3 md:px-4">
            <div class="contact-form">
            <form id="myform" >
              <div class="sm:flex sm:flex-wrap -mx-3">
                <div class="sm:w-1/2 px-3 mb-6">
                  <input type="text" name="fname" required placeholder="Full Name" class="border-2 rounded px-3 py-1 w-full focus:border-indigo-400 input">
                </div>
                <input type="hidden" name="event" value="contactUs">
                <div class="sm:w-1/2 px-3 mb-6">
                  <input type="text" name="email" required placeholder="E-mail address" class="border-2 rounded px-3 py-1 w-full focus:border-indigo-400 input">
                </div>
                <div class="sm:w-1/2 px-3 mb-6">
                  <input type="text" name="phno" required placeholder="Phone Number" class="border-2 rounded px-3 py-1 w-full focus:border-indigo-400 input">
                </div>
                <div class="sm:w-full px-3">
                  <textarea name="message" required cols="30" rows="4" placeholder="Your message here" class="border-2 rounded px-3 py-1 w-full focus:border-indigo-400 input"></textarea>
                </div>
              </div>
              <div class="text-right mt-4 md:mt-12">
                <button type="submit" value="submit" class="border-2 border-indigo-600 rounded px-6 py-2 text-indigo-600 hover:bg-indigo-600 hover:text-white transition-colors duration-300">
                  Send a Message
                  <i class="fas fa-chevron-right ml-2 text-sm"></i>
                </button>
                </form>
              </div>
            </div>
          </div>

          <div class="md:w-1/3 md:px-4 mt-10 md:mt-0">
            <div class="bg-indigo-100 rounded py-4 px-6">
              <h5 class="text-xl font-medium mb-3">Help</h5>
              <p class="text-gray-700 mb-4">Need help or have any query? Don't hesitate, you can directly shoot us an <a href="mailto:" class="text-indigo-600 border-b border-transparent hover:border-indigo-600 inline-block">email</a> or call us at <a href="tel:" class="text-indigo-600 border-b border-transparent hover:border-indigo-600 inline-block">+1 231 456 1231</a></p>
              <p class="text-gray-700">You can move to <a href="#" class="text-indigo-600 border-b border-transparent hover:border-indigo-600 inline-block">FAQs</a> or <a href="#" class="text-indigo-600 border-b border-transparent hover:border-indigo-600 inline-block">Support</a> page to get more information about our site.</p>
            </div>
          </div>

        </div>

      </div>
    </div>

  </div>
</div>


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
	<!--Footer Start-->
	<%@include file="include/footer.jsp" %>
	<!-- toast -->
	    <script src="assets/plugin/jquery-toast/src/jquery.toast.js"></script>
	    <script src="assets/plugin/jquery-toast/dist/jquery.toast.min.js"></script>
	    
	     <script>
		  	$(document).ready(function(){
		  		console.log("page is ready .....")
		  		
		  		$("#myform").on('submit',function(event){
		  			event.preventDefault();
					var f=$(this).serialize();
					$.ajax({
		  				url:"contact",
		  				data:f,
		  				type:'POST',
		  				success:function(data,textStatus,jqXHR){
			  				if(data.trim() ==='done'){
			  					$.toast({
			  					    text: "Message Successfully Sent!", 
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
			  					$('#myform')[0].reset();		  				
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
</body>
</html>