import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; // Import for session management
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class Login
 */
@WebServlet("/DangNhap") // Changed to match your form action="DangNhap"
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// --- JDBC Connection Details ---
	private final String jdbcURL = "jdbc:sqlserver://LAPTOP-ITHNAKRQ\\SQLEXPRESS02:1433; databaseName=WebBuyGameDB ;encrypt=false;trustServerCertificate=true";
	private final String jdbcUsername = "sa";
	private final String jdbcPassword = "1234";
	private final String SELECT_USER_SQL = "SELECT user_id, username, password FROM dbo.users WHERE username = ? AND password = ?";
	// Note: Storing passwords as plain text (like '123' in your image) is insecure.
	// In a real application, you must use secure password hashing (e.g., BCrypt).

    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Typically, the GET request for a login servlet redirects to the login page (index.jsp/login.jsp)
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * Handles the POST request from the login form to authenticate the user.
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. Get parameters from the HTML form (Login.jsp)
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isAuthenticated = false;
		
		try {
			// 2. Load the JDBC Driver (optional for newer servers, but good practice)
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		// 3. Connect to the database and execute the query
		try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			 PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SQL)) {
			
			// Set the parameters for the prepared statement
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password); // Comparing with plain text password from DB
			
			System.out.println(preparedStatement); // For debugging: print the SQL query
			
			// Execute the query
			ResultSet rs = preparedStatement.executeQuery();
			
			// Check if a user record was returned
			if (rs.next()) {
				isAuthenticated = true;
				// Optional: Get user details for the session
				int userId = rs.getInt("user_id");
				// String dbUsername = rs.getString("username"); // You could use this too
				
				// 4. Successful login: Create a session and redirect to home.jsp
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("userId", userId);
				
				// Set a message (optional)
				request.setAttribute("message", "Đăng nhập thành công!");
				
				// Redirect to home page
				response.sendRedirect("Home.jsp"); 
				
			} else {
				// 5. Failed login: Redirect back to the login page with an error message
				request.setAttribute("errorMessage", "Tên tài khoản hoặc mật khẩu không chính xác.");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}

		} catch (SQLException e) {
			// Handle database errors
			e.printStackTrace();
			// Redirect back to login with a generic error
			request.setAttribute("errorMessage", "Lỗi hệ thống: Không thể kết nối hoặc truy vấn cơ sở dữ liệu.");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}
}