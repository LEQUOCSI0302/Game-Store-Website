package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Lấy Session hiện tại (nếu có, không tạo mới)
        HttpSession session = request.getSession(false); 
        
        if (session != null) {
            session.invalidate(); // Hủy bỏ toàn bộ Session
        }
        
        // Chuyển hướng về trang chủ (sử dụng Context Path chuẩn)
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    } // <-- Dấu đóng cho doGet
}
