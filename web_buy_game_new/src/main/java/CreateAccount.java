import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class CreateAccount Được map tới URL "/Register" hoặc
 * "/CreateAccount"
 */
@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// ⭐ THÔNG TIN KẾT NỐI CƠ SỞ DỮ LIỆU (Cần cập nhật)
	private final String jdbcURL = "jdbc:sqlserver://LAPTOP-ITHNAKRQ\\SQLEXPRESS02:1433; databaseName=WebBuyGameDB ;encrypt=false;trustServerCertificate=true";
	private final String jdbcUsername = "sa";
	private final String jdbcPassword = "1234";
	private final String jdbcDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

	// Câu lệnh SQL INSERT để lưu thông tin người dùng
	// 💡 VỊ TRÍ CẦN ĐẶT: Khai báo biến hằng số (final) cho câu lệnh SQL
    private static final String INSERT_USER_SQL = "INSERT INTO dbo.users ([username], [email], [password]) VALUES (?, ?, ?)";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateAccount() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Thiết lập mã hóa UTF-8 để đọc dữ liệu tiếng Việt từ form
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		// 1. Lấy dữ liệu từ biểu mẫu JSP
		String username = request.getParameter("new_username");
		String email = request.getParameter("new_email");
		String password = request.getParameter("new_password");
		String confirmPassword = request.getParameter("confirm_password");

		// 2. Kiểm tra nghiệp vụ (Xác nhận mật khẩu)
		if (!password.equals(confirmPassword)) {
			response.getWriter().println("❌ Lỗi: Mật khẩu xác nhận không khớp.");
			// Bạn nên chuyển hướng người dùng trở lại trang đăng ký với thông báo lỗi.
			return;
		}

		// ⭐ QUAN TRỌNG: Logic mã hóa mật khẩu (Nên sử dụng thư viện như jBCrypt)
		// String hashedPassword = HashUtility.hash(password);

		try {
			// 3. Đăng ký/Tải Driver
			Class.forName(jdbcDriver);

			// 4. Mở kết nối và thực thi truy vấn
			try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
					PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {

				// Thiết lập tham số cho truy vấn (sử dụng PreparedStatement để bảo mật)
				preparedStatement.setString(1, username);
				preparedStatement.setString(2, email);
				preparedStatement.setString(3, password); // Thay thế bằng hashedPassword!

				// Thực thi truy vấn INSERT
				int result = preparedStatement.executeUpdate();

				// 5. Xử lý kết quả
				if (result > 0) {
					// Đăng ký thành công, chuyển hướng đến trang đăng nhập
					response.sendRedirect("Login.jsp?registration=success");
				} else {
					response.getWriter().println("Đăng ký thất bại. Vui lòng thử lại.");
				}
			} catch (SQLException e) {
				// Xử lý lỗi CSDL (ví dụ: Tên người dùng/Email đã tồn tại)
				System.err.println("SQL Exception: " + e.getMessage());
				response.getWriter().println("Lỗi cơ sở dữ liệu. Có thể tên tài khoản hoặc email đã tồn tại.");
			}
		} catch (ClassNotFoundException e) {
			System.err.println("JDBC Driver Not Found: " + e.getMessage());
			response.getWriter().println("Lỗi cấu hình server. Vui lòng kiểm tra file driver JDBC.");
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Chỉ cần giữ lại hoặc chuyển hướng đến form đăng ký nếu cố gắng truy cập bằng
		// GET
		response.sendRedirect("CreateAccount.jsp");
	}
}