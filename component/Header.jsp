<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Steam</title>
<link rel="stylesheet"
	href="<c:url value='/styles/Header.css'/>" />
</head>
<body>
	<c:set var="isLoggedIn" value="${not empty sessionScope.username}" />
	<c:set var="currentUser" value="${sessionScope.username}" />

	<header class="header-main">
		<!-- Phần này chứa các thuộc tính ở trên header -->
		<div class="container-header-top">
			<!--  Phần này là phần giới thiệu -->
			<div class="title">
				<span>Trang giao dịch trò chơi ưu tín nhất Việt Nam</span>
			</div>
			<!-- Tập hợp phần item bên phải -->
			<div class="item-tool">
				<!--  Phần này là về thoonh tin liên hệ-->
				<div class="contact-infor">
				<svg width="800px" height="800px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
   				 <path d="M2 3H0v18h24V3H2zm20 2v14H2V5h20zM10 7H6v4h4V7zm-6 6h8v4H4v-4zm16-6h-6v2h6V7zm-6 4h6v2h-6v-2zm6 4h-6v2h6v-2z" 
          		fill="#FFFFFF"/> 
				</svg>
					<a href="">Thông tin liên hệ</a>
				</div>
				
				<!--  Phần này là phần icon ngôn ngữ, cụ thể Tiếng Việt -->
				<div class="item-language">
				<svg width="24px" height="24px" viewBox="0 0 24 24" role="img"
						xmlns="http://www.w3.org/2000/svg"
						aria-labelledby="languageIconTitle" stroke="#FFFFFF"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						fill="none" color="#FFFFFF"> 
    					<title id="languageIconTitle">Language</title> 
    					<circle cx="12" cy="12" r="10" /> 
    					<path stroke-linecap="round"
						d="M12,22 C14.6666667,19.5757576 16,16.2424242 16,12 C16,7.75757576 14.6666667,4.42424242 12,2 C9.33333333,4.42424242 8,7.75757576 8,12 C8,16.2424242 9.33333333,19.5757576 12,22 Z" /> 
    					<path stroke-linecap="round" d="M2.5 9L21.5 9M2.5 15L21.5 15" /> 
					</svg>
					<span class="text-language">Tiếng Việt</span>
				</div>
			</div>
		</div>
		<!-- Phần này là phần đăng nhập với tìm kiếm,logo -->
		<div class = "container-header-bottom">
			<!-- Đây là phần danh sách bên trái để dẫn vào  -->
			<div class = "list-store-game">
				<span id ="logo">LOGO</span>
					<ul class = "list">
						<li class = "dropdown"><a class = "element-of-list">CỬA HÀNG</a>
							<div class = "element-store">
							<a class = "element-drop" href ="">CỬA HÀNG ĐIỂM</a>
							<a class = "element-drop" href ="">DANH SÁCH ƯỚC</a>
							<a class = "element-drop" href = "">THỐNG KÊ</a>
							</div>
						</li>
						<!--  ĐỂ PHẦN DROPDOWN TRONG TRÒ CHƠI LUÔN THAY VÌ ĐỂ SỔ XUỐNG -->
						<li class = "dropdown"><a class = "element-of-list" href ="element-of-list" href = "">TRÒ CHƠI</a>
						</li>
						<li class = "dropdown"><a class = "element-of-list" href ="element-of-list">DANH MỤC</a>
							<div class = "element-categories">
							<a class = "element-drop" href ="">HOYOVERSE</a> <!--  honkai impact, genshin -->
							<a class = "element-drop" href ="">FROM SOFTWARE</a> <!--elden ring, sekiro,darksoul-->
							<a class = "element-drop" href ="">XBOX</a> <!-- HALO,FORZA -->
							<a class = "element-drop" href ="">ELECTRONIC ARTS</a> <!--  FIFA, THE SIMS,BATTLE FIELD -->
							<a class = "element-drop" href ="">ACTIVISION BLIZZARD</a> <!-- Call of DUTY, World of Warcraft, Diable, OverWatch -->
							<a class = "element-drop" href ="">VALVE CORPORATION</a><!-- liên quan đến game dota 2, haft-life, counter - strike -->
							<a class = "element-drop" href ="">UBISOFT</a> <!-- ASSASSIN'S CREED, FAR CRY, Watch Dogs -->
							<a class = "element-drop" href ="">EPIC GAME</a> <!-- FORtnite -->
							</div>
						</li>
						<li class = "dropdown"><a class = "element-of-list" href ="element-of-list" href = "">THÔNG TIN</a></li>
					</ul>
			</div>
			<!-- Đây là phần đăng nhập tìm kiếm bên phải -->
			<div class="login-container">
				<div>
					  <input class="search" type="text" name="search" placeholder="Tìm kiếm ở đây!">
				</div>
				<c:choose>
					<c:when test="${isLoggedIn}">
						<div class="user-info logged-in-user">
							<img
							src="${pageContext.request.contextPath}/img/default_avatar.jpg"
							alt="Avatar" class="user-avatar" /> <span class="user-link">${currentUser}</span>
							<a href="${pageContext.request.contextPath}/Logout"
							class="logout-btn">[Thoát]</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="user-info">
							<a href="${pageContext.request.contextPath}/Login.jsp"
							class="login-text">Đăng Nhập</a> <span class="separator">/</span>
							<a href="#" class="register">Đăng Ký</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>




	</header>
	<!-- <nav class="navbar main-navbar">


		<div id="login-container">
			<c:choose>
				<c:when test="${isLoggedIn}">
					<div class="user-info logged-in-user">
						<img
							src="${pageContext.request.contextPath}/img/default_avatar.jpg"
							alt="Avatar" class="user-avatar" /> <span class="user-link">${currentUser}</span>
						<a href="${pageContext.request.contextPath}/Logout"
							class="logout-btn">[Thoát]</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="user-info">
						<a href="${pageContext.request.contextPath}/Login.jsp"
							class="login-text">Đăng nhập</a> <span class="separator">|</span>
						<a href="#" class="install-steam-btn">Cài đặt Steam</a>
					</div>
				</c:otherwise>
			</c:choose>
			<a href="#" class="lang-selector">Ngôn ngữ</a>
		</div>
	</nav> -->




</body>
</html>
