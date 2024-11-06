<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String goodsCode = request.getParameter("goodsCode");
String goodsName = request.getParameter("goodsName");
int price = Integer.parseInt(request.getParameter("price"));
int cnt = Integer.parseInt(request.getParameter("cnt"));

Connection conn = null;
PreparedStatement pstmt = null;


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
	
	out.print("접속 성공!!");
	
	String sql = "insert into goodsList ";
	sql += "(goodsCode, goodsName, price, cnt) values ";
	sql += "(?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, goodsCode);
	pstmt.setString(2, goodsName);
	pstmt.setInt(3, price);
	pstmt.setInt(4, cnt);
	int rtnCnt = pstmt.executeUpdate();
	if (rtnCnt == 1) {
		out.print("정상 입력 완료");
	} else {
		out.print("입력 실패");
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
		
		<h3>데이터 입력 완료</h3>
		
		<button type="button" id="btnBack">돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		$(function(){
			$("button#btnBack").click(()=>{
				history.back();
			});
		});
	</script>
</body>
</html>    
<%
} catch (ClassNotFoundException e) {
	out.print(e.getMessage());
} catch (SQLException e) {
	out.print(e.getMessage());
}
%>