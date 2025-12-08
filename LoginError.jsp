<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập thất bại</title>
</head>
<body>
	<div style="text-align: center; margin-top: 100px;">
		<h1 style="color: red;">ĐĂNG NHẬP THẤT BẠI ❌</h1>
        <p style="font-size: 18px;">${errorMessage != null ? errorMessage : "Tên tài khoản hoặc mật khẩu không chính xác."}</p>
		<a href="Login.jsp" style="display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #088178; color: white; text-decoration: none; border-radius: 5px;">Thử lại</a>
	</div>
</body>
</html>