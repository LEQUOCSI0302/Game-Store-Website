package database;

import model.beans.*;
import context.DBContext; // Import DBContext
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // Khai báo DBContext
    private DBContext dbContext; 
    
    private final String SELECT_USER_SQL = "SELECT user_id, username, email, password FROM dbo.users WHERE username = ? AND password = ?";

    public UserDAO() {
        dbContext = new DBContext(); // Khởi tạo DBContext
    }

    public User login(String username, String password) throws SQLException {
        User user = null;
        
        // Sử dụng getConnection() từ DBContext
        try (Connection connection = dbContext.getConnection(); 
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SQL)) {
            
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password")); 
            }
        } catch (Exception e) {
            // Xử lý hoặc re-throw Exception nếu có lỗi kết nối Driver/CSDL
            throw new SQLException("Lỗi kết nối CSDL: " + e.getMessage());
        }
        return user;
    }
}