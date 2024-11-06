package pkg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConn {	// DAO (Access, 접속)

	// 1. DB접속 담당
	// 2. DB와의 CRUD
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	
	public boolean mtdDBConn(DataBean dto) {
		
		boolean chk = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url ="jdbc:mysql://localhost:3306/sampleData?";
			url += "useSSL=false&";
			url += "useUnicode=true&";
			url += "characterEncoding=UTF8&";
			url += "serverTimezone=Asia/Seoul&";
			url += "allowPublicKeyRetrieval=true";
			
			String uid = "root";
			String pwd = "1234";
			conn = DriverManager.getConnection(url, uid, pwd);
			
			System.out.println("Conn OK!!");
			
		 	String sql = "insert into goodsList ";
		 	sql += "(goodsCode, goodsName, price, cnt) values ";
		 	sql += "(?, ?, ?, ?)";
		 	pstmt = conn.prepareStatement(sql);
		 	pstmt.setString(1, dto.getGoodsCode());
		 	pstmt.setString(2, dto.getGoodsName());
		 	pstmt.setInt(3, dto.getPrice());
		 	pstmt.setInt(4, dto.getCnt());
		 	int rtnCnt = pstmt.executeUpdate();
		 	
		 	if (rtnCnt == 1) {
		 		chk = true;
		 	}
		 	
			
		} catch (ClassNotFoundException e) {
			System.out.println("CNFE : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("SQLE : " + e.getMessage());
		}
		
		return chk;
	}

	
}
