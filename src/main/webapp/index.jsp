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

<link rel="stylesheet" href="styles/picture_poster.css" />
<link rel="stylesheet" href="styles/spotlight.css" />
</head>
<body>

<nav></nav>
<!-- poster -->
	<div id ="poster" class ="poster">
	<a href ="#"></a> <!-- nữa sẽ cho link full ảnh ở đây -->
	<img src="${pageContext.request.contextPath}/img/home/poster_little_Night_Mare.png" alt="poster" >
	</div>
	<!-- end poster -->
	
	
	
	
	<!-- danh sách đặc biệt -->
	    <div id="spotlight_img">
      <div class="carousel_wrapper">
        <div class="arrow left">❮</div>

        <div id="home_maincap_v7" class="carousel_container">
          <div class="carousel_items" id="game_list_container"></div>
        </div>
        <div class="arrow right">❯</div>
      </div>
      <script src="${pageContext.request.contextPath}/script/script_spotlight.js"></script>
      <script src="${pageContext.request.contextPath}/script/data_game_spotlight.js"></script>
    </div>
    
	<!-- end -->
	      
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	               
	
	
	
	<footer></footer>
</body>
</html>