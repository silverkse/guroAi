package pack.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBConn {
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	public List<DataBean> getAllData () {
		List<DataBean> dataList = new ArrayList<DataBean>();
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
			
			stmt = conn.createStatement();
			String sql = "select num, goodsCode, goodsName, price, cnt ";
			sql += "from goodsList ";
			sql += "order by num desc";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				DataBean dataBean = new DataBean();
				dataBean.setNum(rs.getInt(1));
				dataBean.setGoodsCode(rs.getString(2));
				dataBean.setGoodsName(rs.getString(3));
				dataBean.setPrice(rs.getInt("price"));
				dataBean.setCnt(rs.getInt("cnt"));
				dataList.add(dataBean);				
			}
		} catch (ClassNotFoundException e) {
			System.out.print(e.getMessage());
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		
		return dataList;
	}
}
