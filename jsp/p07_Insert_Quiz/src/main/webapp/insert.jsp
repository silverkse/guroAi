<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;

String title = "연습글입";
String content = null;
String writer = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url ="jdbc:mysql://localhost:3306/insert?";
	url += "useSSL=false&";
	url += "useUnicode=true&";
	url += "characterEncoding=UTF8&";
	url += "serverTimezone=Asia/Seoul&";
	url += "allowPublicKeyRetrieval=true";
	
	String uid = "root";
	String pwd = "1234";
	conn = DriverManager.getConnection(url, uid, pwd);
	
	String sql = "insert into bbs (title, content, writer) ";
	sql += "values (?, ?, ?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, writer);
	int resNum = pstmt.executeUpdate();
	
	if(resNum == 1) {
		out.print("정상입력 완료!");		
	} else {
		out.print("입력 실패!");		
	}
	
	
} catch (ClassNotFoundException e) {
	out.print(e.getMessage());
} catch (SQLException e) {
	out.print(e.getMessage());
}
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    