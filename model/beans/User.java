package model.beans;


//Khai báo import
//(Không cần import gì nhiều, chỉ cần các kiểu dữ liệu chuẩn)

public class User {
 private int userId;
 private String username;
 private String email;
 private String password; // Trong ứng dụng thực tế, đây là hash

 // 1. Constructor rỗng
 public User() {}

 // 2. Constructor đầy đủ
 public User(int userId, String username, String email, String password) {
     this.userId = userId;
     this.username = username;
     this.email = email;
     this.password = password;
 }

 // 3. Getters và Setters
 public int getUserId() {
     return userId;
 }

 public void setUserId(int userId) {
     this.userId = userId;
 }

 public String getUsername() {
     return username;
 }

 public void setUsername(String username) {
     this.username = username;
 }

 public String getEmail() {
     return email;
 }

 public void setEmail(String email) {
     this.email = email;
 }

 public String getPassword() {
     return password;
 }

 public void setPassword(String password) {
     this.password = password;
 }
}