<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>

<%HttpSession session=request.getSession(false);
if(session==null)
response.sendRedirect("login.jsp");


 %>





<!DOCTYPE html>
<html lang="en">
<head>
	<title> Real Estate Home Page </title>
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>

	<section class="hero">
		<header>
			<div class="wrapper">
				<a href="index.html"><img src="img/logo1.jpg" style="width:150px;height:90px;" class="logo" alt="" title=""/></a>
				<a href="" class="hamburger"></a>
				<nav>
					<ul>
						<li><a href="buy.html">Buy</a></li>
						<!--<li><a href="sell_rent.html">Rent</a></li>  -->
						<li><a href="sell_rent.html">Sell</a></li>
						<li><a href="contact.html">About</a></li>
						<li><a href="contact2.html">Contact</a></li>
					</ul>
					<%=session.getAttribute("user")%><b><a href="logoutprocess.jsp" class="login_btn">Logout</a>
				</nav>
			</div>
		</header><!--  end header section  -->

			<section class="caption">
				<h2 class="caption">Find You Dream Home</h2>
				<h3 class="properties">Appartements - Houses - Mansions</h3>
			</section>
	</section><!--  end hero section  -->


	<section class="search">
		<div class="wrapper">
			<form action="fetch.jsp" method="post">
				<input type="text" id="search" name="search" placeholder="What are you looking for?"  autocomplete="off"/>
				<input type="submit" id="submit_search" name="submit_search"/>
			</form>
			<a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
		</div>

		<div class="advanced_search">
			<div class="wrapper">
				<span class="arrow"></span>
				<form action="#" method="post">
					<div class="search_fields">
						<input type="text" class="float" id="check_in_date" name="check_in_date" placeholder="Check Type"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="check_out_date" name="check_out_date" placeholder="Check Location"  autocomplete="off">
					</div>
					<div class="search_fields">
						<input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price"  autocomplete="off">
					</div>
					<input type="text" id="keywords" name="keywords" placeholder="Keywords"  autocomplete="off">
					<input type="submit" id="submit_search" name="submit_search"/>
				</form>
			</div>
		</div><!--  end advanced search section  -->
	</section><!--  end search section  -->


	<section class="listings">
		<div class="wrapper">
			<ul class="properties_list">
				<li>
					<a href="buy.html">
						<img src="img/property_1.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 25lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_2.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 10lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_3.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 50lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_1.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 25lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_2.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 10lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_3.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 50lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_1.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 25lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_2.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 10lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
				<li>
					<a href="buy.html">
						<img src="img/property_3.jpg" alt="" title="" class="property_img"/>
					</a>
					<span class="price">Rs 50lakh</span>
					<div class="property_details">
						<h1>
							<a href="buy.html">Appartements - Houses - Mansions</a>
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... <span class="property_size">(288ftsq)</span></h2>
					</div>
				</li>
			</ul>
			<!-- <div class="more_listing">
				<a href="buy.html" class="more_listing_btn">View More Listings</a>
			</div> -->
		</div>
	</section>	<!--  end listing section  -->

	<footer>
		<div class="wrapper footer">
			<ul>
				<li class="links">
					<ul>
						<li><a href="contact.html">About</a></li>
						<li><a href="">Support</a></li>
						<li><a href="">Terms</a></li>
						<li><a href="">Policy</a></li>
						<li><a href="contact2.html">Contact</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="buy.html">Appartements</a></li>
						<li><a href="buy.html">Houses</a></li>
						<li><a href="buy.html">Villas</a></li>
						<li><a href="buy.html">Mansions</a></li>
						<li><a href="#">...</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="">Meerut</a></li>
						<li><a href="">Noida</a></li>
						<li><a href="">Ghaziabad</a></li>
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
					</ul>
				</li>

				<li class="about">
					<p> Real Estate </p>
					<ul>
						<li><a href="http://www.facebook.com/realestateclub/" class="facebook" target="_blank"></a></li>
						<li><a href="http://twitter.com/" class="twitter" target="_blank"></a></li>
						<li><a href="http://plus.google.com/" class="google" target="_blank"></a></li>
						<li><a href="#" class="skype"></a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="copyrights wrapper">
			Copyright © 2015 <a href="http://www.realestate.in" target="_blank" class="ph_link" title="Read More">RealEstaste.in</a>. All Rights Reserved.
		</div>
	</footer><!--  end footer  -->
	
</body>
</html>

