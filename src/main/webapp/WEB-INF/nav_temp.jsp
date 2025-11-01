<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Steak</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js"
	integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="styles/main-nav.css" />
<!-- CSS dành nav ở trên -->
<link rel="stylesheet" href="styles/sub-nav.css" />
<!-- CSS dành nav ở dưới -->
</head>
<body>
	<!-- Phần navbar trên -->
	<nav class="navbar">
		<div id="container">
			<!-- logo -->
			<a class="navbar-brand" href="#"> <!-- dùng để tải lại trang chủ -->
				<img src="img/home/logo.png" alt="Bootstrap" width="30" height="24"
				class="logo" />
			</a>

			<div id="menu">
				<!-- Danh sách -->
				<ul id="navbar-nav">

					<li class="nav-item"><a class="shop dropdown-toggle" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
							<li><a class="dropdown-item" href="about.html">Discovery
									Queue</a></li>
							<li><a class="dropdown-item" href="about.html">Wishlist</a></li>
							<li><a class="dropdown-item" href="about.html">Points
									Shop</a></li>
							<li><a class="dropdown-item" href="about.html">News</a></li>
							<li><a class="dropdown-item" href="about.html">Stats</a></li>
						</ul></li>


					<li class="nav-item"><a class="blog dropdown-toggle" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
							<li><a class="dropdown-item" href="about.html">Discussions</a></li>
							<li><a class="dropdown-item" href="about.html">Workshop</a></li>
							<li><a class="dropdown-item" href="about.html">Market</a></li>
							<li><a class="dropdown-item" href="about.html">Broadcasts</a></li>
						</ul></li>

					<li class="nav-item"><a class="about">About</a></li>
					<li class="nav-item"><a class="contact">Contact</a></li>
				</ul>

				<form class="btn-login" role="login">
					<button class="login" type="submit">Login</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- End Phần navbar trên -->

	<!-- Phần navbar dưới -->
	<div class="sub-navbar">
		<div id="sub-container">
			<div id="sub-menu">
				<ul id="sub-navbar-nav">
					<li class="sub-nav-item">
						<a class ="browse dropdown-toggle" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">Browse</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
						</ul></li>
					<li class="sub-nav-item">
						<a class ="recommendations dropdown-toggle" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">Recommendations</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
						</ul></li>
					<li class="sub-nav-item">
						<a class ="categories dropdown-toggle" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">Categories</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
						</ul></li>
					<li class="sub-nav-item">
						<a class ="ways-to-Play dropdown-toggle" role="button" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">Ways to Play</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
						</ul></li>
					<li class="sub-nav-item">
						<a class ="special dropdown-toggle" role="button" data-bs-toggle="dropdown"
						aria-expanded="false">Special</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Home</a></li>
						</ul></li>
				</ul>
				<div id = "btn-search">
							<form class="d-flex" role="search">
					<input class="search" type="search" placeholder="Search"
						aria-label="Search" />
					<button class="btn btn-outline-success" type="submit">Search
						the store</button>
				</form>
				
				</div>
			</div>
		</div>
	</div>


















	<section id="hero"></section>
</body>
</html>