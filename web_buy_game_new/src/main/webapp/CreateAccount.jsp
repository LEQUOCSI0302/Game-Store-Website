<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tạo Tài Khoản Mới</title>
    <link rel="stylesheet" href="Login.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
      integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div id="Login">
      <div id="nen_trong">
        <h2>TẠO TÀI KHOẢN MỚI</h2>
        <div class="login-form">
          <form action="CreateAccount" method="post">
            <div class="form-group">
              <label for="new_username">Tên tài khoản</label>
              <input type="text" id="new_username" name="new_username" />
            </div>

            <div class="form-group">
              <label for="new_email">Email</label>
              <input type="email" id="new_email" name="new_email" />
            </div>

            <div class="form-group">
              <label for="new_password">Mật khẩu</label>
              <input type="password" id="new_password" name="new_password" />
            </div>

            <div class="form-group">
              <label for="confirm_password">Xác nhận mật khẩu</label>
              <input
                type="password"
                id="confirm_password"
                name="confirm_password"
              />
            </div>

            <button type="submit" class="login-button">
              ĐĂNG KÝ TÀI KHOẢN
            </button>

            <a href="Login.jsp" class="back-to-login"
              >Quay lại trang Đăng nhập</a
            >
          </form>
        </div>
      </div>
    </div>
  </body>
</html>