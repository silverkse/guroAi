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
	// DAO
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private PreparedStatement pstmt = null;
	
	// DB 접속용 메서드
	public Connection mtdDBConn() {
		
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
			// Select 실행 및 출력영역
			
		} catch (ClassNotFoundException e) {
			System.out.print(e.getMessage());
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		
		return conn;
	}
	
	
	// 데이터 조회용 Select 처리 메서드
	public List<DataBean> mtdSelect() {
		
		List<DataBean> list = new ArrayList<>();
		DataBean dataBean = null;		// DTO 객체
		
		try {
			
			stmt = conn.createStatement();
			String sql = "select num, goodsCode, goodsName, price, cnt ";
			sql += "from goodsList ";
			sql += "order by num desc";
			rs = stmt.executeQuery(sql);
			

			while(rs.next()) {
				dataBean = new DataBean();
				
				dataBean.setNum(rs.getInt("num"));
				dataBean.setGoodsCode(rs.getString("goodsCode"));
				dataBean.setGoodsName(rs.getString("goodsname"));
				dataBean.setPrice(rs.getInt("price"));
				dataBean.setCnt(rs.getInt("cnt"));
				
				list.add(dataBean);
			}
			
		} catch (SQLException e) {
			System.out.print("Select SQLE : " + e.getMessage());
		}
		
		return list;
	}
	
	
	// 삭제용 메서드 시작
	public boolean mtdDelete(int numParam) {
		boolean chk = false;
		try {
			String sql = "delete from goodsList where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, numParam);
			int rtnCnt = pstmt.executeUpdate();
			if(rtnCnt == 1) {
				chk = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return chk;
	}
	
	// 삭제용 메서드 끝
	
	
}
