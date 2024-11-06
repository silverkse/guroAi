package pkg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConn {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public boolean mtdInsChk(DataBean dataBean) {
		boolean insChk = false;
		
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
			
//		 	out.print("접속 성공!!");
			
			String sql = "insert into goodsList (goodsCode, goodsName, price, cnt) values ";
			sql += "(?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dataBean.getGoodsCode());
			pstmt.setString(2, dataBean.getGoodsName());
			pstmt.setInt(3, dataBean.getPrice());
			pstmt.setInt(4, dataBean.getCnt());
			
			int rtnCnt = pstmt.executeUpdate();
			
			if (rtnCnt == 1) {
				insChk = true;
			}
			
		} catch (ClassNotFoundException e) {
			System.out.print(e.getMessage());
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		
		return insChk;
	}
}
