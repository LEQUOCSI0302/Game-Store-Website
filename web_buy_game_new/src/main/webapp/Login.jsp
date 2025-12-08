<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Login.css">
</head>
<body>
	<div id="Login">
		<div id="nen_trong">
			<h2>ĐĂNG NHẬP</h2>

			<div class="login-form">
				<form action="DangNhap" method="post">
					<div class="form-group">
						<label for="username">đăng nhập bằng tên tài khoản</label> <input
							type="text" id="username" name="username" />
					</div>
					<div class="form-group">
						<label for="password">mật khẩu</label> <input type="password"
							id="password" name="password" />
					</div>
					<button type="submit" class="login-button">ĐĂNG NHẬP</button>
					<div class="social-login-options">
						<a href="#" class="social-login-button google-button"> <i
							class="fab fa-google"></i> Google
						</a> <a href="#" class="social-login-button facebook-button"> <i
							class="fab fa-facebook-f"></i> Facebook
						</a>
					</div>
					<a href="CreateAccount.html" id="account_creation">tạo
						tài khoản mới</a>
				</form>
			</div>
</body>
</html>