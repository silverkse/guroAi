package pack.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import pack.dto.DataBean;

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
			
			String url ="jdbc:mysql://localhost:3306/store_Manager?";
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
		
		return conn;
	}
	
	
	
	// 입력용 메서드 시작
	public boolean mtdInsert(HttpServletRequest req, DataBean dataBean) {
		
		String remoteIP = req.getRemoteAddr();
		
		boolean chk = false;
		try {
			String sql = "insert into goodsList ";
			sql += "(originalFile, uploadFile, fileType, fileSize, ";
			sql += "goodsName, price, goodsDesc, remoteIP) ";
			sql += "values (?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dataBean.getOriginalFile());
			pstmt.setString(2, dataBean.getUploadFile());
			pstmt.setString(3, dataBean.getFileType());
			pstmt.setInt(4, dataBean.getFileSize());
			pstmt.setString(5, dataBean.getGoodsName());
			pstmt.setInt(6, dataBean.getPrice());
			pstmt.setString(7, dataBean.getGoodsDesc());
			pstmt.setString(8, remoteIP);
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
	
	// 입력용 메서드 끝
	
	
}
