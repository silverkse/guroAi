package pack.jdbc;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.oreilly.servlet.MultipartRequest;

public class DBConn {
	// DAO
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		
		// DB 접속용 메서드
		public void mtdDBConn() {
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				String url ="jdbc:mysql://localhost:3306/fileUp?";
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
		
		
		// 데이터 조회용 Select 처리 메서드
		public boolean mtdInsert(MultipartRequest multiReq) {
			boolean chk = false;
			File file = multiReq.getFile("fileName");
			try {
				
				String sql = "insert into fileList (subject, content, uploadFile, originalFile, filesize) ";
				sql += "values (?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, multiReq.getParameter("subject"));
				pstmt.setString(2, multiReq.getParameter("content"));
				pstmt.setString(3, multiReq.getFilesystemName("fileName"));
				pstmt.setString(4, multiReq.getOriginalFileName("fileName"));
				pstmt.setInt(5, (int)file.length());
				
				int resCnt = pstmt.executeUpdate();
				
				if(resCnt == 1) chk = true;
				
			} catch (SQLException e) {
				System.out.print("Select SQLE : " + e.getMessage());
			}
			
			return chk;
		}
	
	
}
