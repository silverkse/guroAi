<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

Context init = new InitialContext();
DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/dbcpConn");
// JNDI : Java Naming Directory Interface
// DB 접속과 관련된 내용을 갖고 있음.
// 이것의 메서드를 사용하여 DB를 접속한다. 

try {
	conn = dataSource.getConnection();
	out.print("접속 OK!!!");
	
	// Statement, PreparedStatement, ResultSet을 사용한 CRUD 작업
	stmt = conn.createStatement();
	String sql = "select * from goodsList";
	rs = stmt.executeQuery(sql);
	
} catch (Exception e) {
	out.print("Connection Err : " + e.getMessage());
} finally {
	
// 	try {
// 		if (conn != null) {
// 			conn.close();
// 		}
// 	} catch (SQLException e) {
// 		out.print("SQLE : " + e.getMessage());
// 	}
	try { if (rs != null) rs.close(); } catch (SQLException e) { } 		// rs가 먼저 끊어지고 stmt를 끊어야 한다.
	try { if (stmt != null) stmt.close(); } catch (SQLException e) { } 	// stmt가 먼저 끊어지고 conn을 끊어야 한다.
	try { if (conn != null) conn.close(); } catch (SQLException e) { } 	// 이렇게 축약해서 작성하기도 한다.
	
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