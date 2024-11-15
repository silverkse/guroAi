<%@page import="java.sql.SQLException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

Context init = new InitialContext();
DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/dbcpConn");

try {
	conn = dataSource.getConnection();
// 	out.print("접속 OK!!");
	
	stmt = conn.createStatement();
	String sql = "select * from goodsList order by num desc";
	rs = stmt.executeQuery(sql);
	
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
		<h1>상품목록</h1>
		<table>
			<tbody>
				<tr>
					<td>번호</td>
					<td>상품코드</td>
					<td>상품명</td>
					<td>가격</td>
					<td>재고</td>
				</tr>
			<% while(rs.next()) { %>
				<tr>
					<td><%=rs.getInt("num") %></td>
					<td><%=rs.getString("goodsCode") %></td>
					<td><%=rs.getString("goodsName") %></td>
					<td><%=rs.getInt("price") %></td>
					<td><%=rs.getInt("cnt") %></td>
				</tr>
			<% } %>
<%
} catch (Exception e) {
	out.print(e.getMessage());
} finally {
	try { if (rs != null) rs.close(); } catch (SQLException e) { }
	try { if (stmt != null) stmt.close(); } catch (SQLException e) { }
	try { if (conn != null) conn.close(); } catch (SQLException e) { }
}
%>			
			</tbody>
		</table>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    