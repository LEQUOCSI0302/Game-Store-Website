package controller.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.UserDAO;
import model.beans.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/DangNhap")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Khởi tạo DAO (Không cần JDBC URL/Password ở đây nữa)
    private UserDAO userDAO;
    
    // Phương thức init được gọi 1 lần khi Servlet được load
    public void init() {
        userDAO = new UserDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/Login.jsp");
	}
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
        // Bắt đầu xử lý với DAO
		try {
            // Gọi phương thức login từ DAO
			User user = userDAO.login(username, password);
			
			if (user != null) {
				// Đăng nhập THÀNH CÔNG
				HttpSession session = request.getSession();
                
                // Lưu thông tin từ Model vào Session
				session.setAttribute("username", user.getUsername());
				session.setAttribute("userId", user.getUserId());
				
				// Chuyển hướng về index.jsp
				response.sendRedirect(request.getContextPath() + "/index.jsp"); 
				
			} else {
				// Đăng nhập THẤT BẠI
				request.setAttribute("errorMessage", "Tên tài khoản hoặc mật khẩu không chính xác.");
				request.getRequestDispatcher("/LoginError.jsp").forward(request, response);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", "Lỗi hệ thống: Không thể kết nối hoặc truy vấn cơ sở dữ liệu.");
			request.getRequestDispatcher("/LoginError.jsp").forward(request, response);
		}
	}

}
