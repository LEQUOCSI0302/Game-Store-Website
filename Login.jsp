<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="<c:url value='/styles/login.css'/>" />
</head>
<body>
	<div id="login">
			<%
			if (request.getAttribute("errorMessage") != null) {
			%>
			<p style="color: red; text-align: center;"><%=request.getAttribute("errorMessage")%></p>
			<%
			}
			%>
		<div class = "infor-login">
			<span>Steak</span>
			<ul>
			<li>LƯU Ý ĐĂNG NHẬP ĐĂNG KÝ TẠI STEAK</li>
			<li>1. Đăng ký tài khoản nếu chưa có</li>
			<li>2. Nhập tài khoản mật khẩu cho đăng nhập</li>
			<li>3. Hoàn thành biểu mẫu đăng nhập</li>
			<li>4. Hoặc đăng nhập bằng tài khoản mạng xã hội</li>
			</ul>
		</div>
		<div class="login-form">
			<span>Đăng Nhập</span>
				<form action="DangNhap" method="post">
					<div class="form-group">
						<label for="username">Tài khoản:</label> <input
						type="text" id="username" name="username" />
					</div>
					<div class="form-group">
						<label for="password">Mật khẩu:</label> <input type="password"
						id="password" name="password" />
					</div>
					<button type="submit" class="login-button">ĐĂNG NHẬP</button>
					<div class="social-login-options">
						<span>Đăng nhập với tài khoản mạng xã hội</span>
						<ul>
						<li>Facebook</li>
						<li>Google</li>
						</ul>
					</div>
					<a href="CreateAccount.jsp" id="account_creation">Tạo tài khoản
						mới</a>
					<a href ="index.jsp" id="return_index">Quay lại trang chủ &rarr;</a> 
				</form>
		</div>
	</div>
</body>
</html>