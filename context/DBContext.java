package context;
 // Tạo thư mục context

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    // Thông tin kết nối CSDL TẬP TRUNG (Server của bạn)
	private final String jdbcURL = "jdbc:sqlserver://LAPTOP-G8UF8N2N\\SQLEXPRESS01:1433; databaseName=StoreGame ;encrypt=false;trustServerCertificate=true";
	private final String jdbcUsername = "sa";
	private final String jdbcPassword = "123";

    public Connection getConnection() throws Exception {
        // Load Driver (Dùng Class.forName)
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        // Trả về Connection
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }
}