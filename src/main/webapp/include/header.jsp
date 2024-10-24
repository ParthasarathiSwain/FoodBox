    <header>
            <div class="header-bottom wrapper-padding-2 res-header-sm sticker header-sticky-3 furits-header">
                <div class="container-fluid">
                    <div class="header-bottom-wrapper">
                        <div class="logo-2 ptb-35">
                            <a href="index.html">
                               
                                <h1 style="color:#0cc90f">Foodbox</h1> 
                            </a>
                        </div>
                        <div class="menu-style-2 handicraft-menu menu-hover">
                            <nav>
                                <ul>
                                    <li><a href="index.jsp">home</a></li>
                                    <li><a href="shop.jsp">Menu</a></li>
                                    <li><a href="cart.jsp">Cart</a></li>
                                      <li><a href="myAccount.jsp">MyAccount</a> </li>
                                    <li><a href="contactUs.jsp">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="furits-login-cart">
                            <div class="furits-login">
                            <%
                            	String name = (String) session.getAttribute("name");
								String email = (String) session.getAttribute("email");
								if(email != "" && email != null){	
							%>
							<ul>
								<li><span style="color:green">Welcome <b><% out.print(name);%></b></span></li>
								<li><a href="logout.jsp" class="">Logout</a></li>
							</ul>
							<% 
							}else{
							%>
                                <ul>
                                    <li><a href="login.jsp">Login</a></li>
                                    <li><a href="custRegistration.jsp">Reg</a> </li>
                                </ul>
                            <%	
							 }
				    		%>
                            </div>
                            <div class="header-cart-4 furits-cart">
                                <a class="icon-cart" href="cart.jsp">
                                    <i class="ti-shopping-cart"></i>
                                    <span class="handicraft-count" id="cartCounter">
                                    <%
					String cartCount =session.getAttribute("cartCount")+"";
					cartCount=(cartCount.equals("null")?"0":cartCount);
					out.print(cartCount);
					
					
					%></span>
                                </a>
                               
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="mobile-menu-area handicraft-menu d-md-block col-md-12 col-lg-12 col-12 d-lg-none d-xl-none">
                            <div class="mobile-menu">
                                <nav id="mobile-menu-active">
                                    <ul class="menu-overflow">
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="shop.jsp">Menu</a></li>
                                        <li><a href="cart.jsp">Cart</a></li>
                                        <li><a href="myAccount.jsp">MyAccount</a></li>
                                        <li><a href="contactUs.jsp"> Contact  </a></li>
                                    </ul>
                                </nav>							
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>