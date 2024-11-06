<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;

String goodsCode = request.getParameter("goodsCode");
String goodsName = request.getParameter("goodsName");
int price = Integer.parseInt(request.getParameter("price"));
int cnt = Integer.parseInt(request.getParameter("cnt"));

String prnTxt = null;

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
	
// 	out.print("접속 성공!!");
	
	String sql = "insert into goodsList (goodsCode, goodsName, price, cnt) values ";
	sql += "(?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, goodsCode);
	pstmt.setString(2, goodsName);
	pstmt.setInt(3, price);
	pstmt.setInt(4, cnt);
	int rtnCnt = pstmt.executeUpdate();
	if (rtnCnt == 1) {
		prnTxt = "데이터 입력 완료";
	} else {
		prnTxt = "데이터 입력 실패";
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
	<div id="wrap" class="insert">
		<p><%=prnTxt %></p>
		<button>돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		$(function() {
			$("button").click(() => {
				location.href="/jdbc/form.html";
			});
		});
	</script>
</body>
</html>    