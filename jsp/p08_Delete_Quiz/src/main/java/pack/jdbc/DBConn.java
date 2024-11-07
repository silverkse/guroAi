package pack.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBConn {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public void mtdDBConn() {
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
					
				
		} catch (ClassNotFoundException e) {
			System.out.print(e.getMessage());
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		
	}
	
	public List<DataBean> mtdSelect() {
		List<DataBean> data = new ArrayList<>();
		try {
			stmt = conn.createStatement();
			String sql = "select num, goodsCode, goodsName, price, cnt ";
			sql += "from goodsList ";
			sql += "order by num desc";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				DataBean setData = new DataBean();
				setData.setNum(rs.getInt("num"));
				setData.setGoodsCode(rs.getString(2));
				setData.setGoodsName(rs.getString("goodsName"));
				setData.setPrice(rs.getInt(4));
				setData.setCnt(rs.getInt("cnt"));
				data.add(setData);
			}
			
		} catch(SQLException e) {
			System.out.println("Select SQLE : " + e.getMessage());
		}
		return data;
	}
	
	public boolean mtdDelete(int delNum) {
		boolean res = false;
		try {
			String sql = "delete from goodsList where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, delNum);
			
			int resCnt = pstmt.executeUpdate();
			if(resCnt == 1) res = true;
			
		} catch(SQLException e) {
			System.out.println("Select SQLE : " + e.getMessage());
		}
		
		return res;
	}
	
}
