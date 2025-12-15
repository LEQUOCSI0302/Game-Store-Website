package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.beans.Discounts;

public class DiscountDAO {
	public static String url = "";
	public static String dbdriver = "";
	public static String username = "";
	public static String password = "";
	
	/*
	 * Lấy danh sách game cho sile của phần giảm giá và sự kiện
	 * CHọn dữ liệu cần sử dụng
	 */
	public List<Discounts> getActiveDeals(){
		List<Discounts> discounts = new ArrayList<>();
		String statementSql = "selet id, title, deal_type, offer_end, percent_off, price, image_url from deals ";
		try (Connection conn = 	DriverManager.getConnection(url, username, password)){
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(statementSql);
			while(rs.next()) {
				discounts.add(new Discounts(rs.getLong("id"),rs.getString("title"),rs.getString("dealType"),
						rs.getString("offerEnd"),rs.getString("percentOff"),
						rs.getString("price"),rs.getString("imgUrl")
						));	
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return discounts;	
	}

	/*
	 * Lấy thông tin của thanh tool
	 */
	public Discounts getDiscountsDetailsById(long gameId) {
		String statementSql = "select id,title, imgUrl, releaseDate, reviewDate, reviewStatus, reviewCount,userTag from deals";
		Discounts discounts = null;
		try(Connection conn = 	DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt =conn.prepareStatement(statementSql)){
			pstmt.setLong(1, gameId);
			try (ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {
					discounts = new Discounts();
					discounts.setId(rs.getLong("id"));
					discounts.setTitle(rs.getString("title"));
					discounts.setImgUrl(rs.getString("imgUrl"));
					discounts.setReleaseDate(rs.getString("releaseDate"));
					discounts.setReviewStatus(rs.getString("reviewStatus"));
					discounts.setReviewCount(rs.getInt("reviewCount"));
					String tagsString = rs.getString("userTag");
					if(tagsString != null) {
						discounts.setUserTag(tagsString.split(","));
					}
				}
			} 
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return discounts;
		
	}
	
	
}
