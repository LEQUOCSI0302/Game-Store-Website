<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Steak</title>
<link rel="stylesheet" href="<c:url value='/styles/Index.css'/>" />

    <link rel="stylesheet" href="<c:url value='/styles/ToolHubCarousel.css'/>" />
</head>
<body>
<div>
</div>
	<%@ include file="component/Header.jsp"%>
      <main>
      <div class="category-slider-container">
    <div class="swiper categorySwiper">
        <div class="swiper-wrapper">
            <c:forEach items="${categories}" var="cat">
                <div class="swiper-slide">
                    <a href="${pageContext.request.contextPath}/${cat.link}" class="category-item">
                        <span>${cat.name}</span>
                    </a>
                </div>
            </c:forEach>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
</div>

   <div class="brand-filter-container">
    <ul class="brand-list">
        <li><a class="cate" href="">HOYOVERSE</a></li>
        <li><a class="cate" href="">FROM SOFTWARE</a></li>
        <li><a class="cate" href="">XBOX</a></li>
        <li><a class="cate" href="">ELECTRONIC ARTS</a></li>
        <li><a class="cate" href="">ACTIVISION BLIZZARD</a></li>
        <li><a class="cate" href="">VALVE CORPORATION</a></li>
        <li><a class="cate" href="">UBISOFT</a></li>
        <li><a class="cate" href="">EPIC GAME</a></li>
    </ul>
</div>
      
       <section id="video-goty">
        <div class="mathk">
          <video autoplay muted loop playsinline width="640" height="360">
            <source src="video/videogame1_trailer.mp4" type="video/mp4" />
          </video>
        </div>
      <div class="mathk"><h1>GAME OF THE YEAR 2019: Sekiro</h1></div>
    </section>

      
   <div class="product-filter-tabs">
    <a href="javascript:void(0)" class="tab active" data-sort="popular">Bán chạy</a>
    <a href="javascript:void(0)" class="tab" data-sort="suggested">Gợi ý cho bạn</a>
    <a href="javascript:void(0)" class="tab" data-sort="newest">Mới nhất</a>
    <a href="javascript:void(0)" class="tab" data-sort="cheap">Giá rẻ</a>
</div>

<section class="product-section">
    <div class="product-grid" id="productContainer">
        <c:forEach items="${products}" var="p">
            <div class="product-card">
                <div class="product-img"><img src="${p.image}" alt=""></div>
                <div class="product-info">
                    <h3 class="product-title">${p.name}</h3>
                    <p class="product-price">${p.price}đ</p>
                    <div class="product-meta">
                        <span>⭐⭐⭐⭐⭐</span>
                        <span>Đã bán ${p.soldCount}</span>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
      </main>


	

	<%@ include file="component/footer.jsp"%>
<script>
    var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="<c:url value='/script/ToolHubCarousel.js'/>"></script>

</body>
</html>