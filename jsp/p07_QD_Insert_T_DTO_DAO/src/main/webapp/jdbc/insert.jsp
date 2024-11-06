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
%>

<jsp:useBean id="dto" class="pkg.jdbc.DataBean" />
<!-- DataBean의 객체 생성 == DataBean dto = new DataBean(); -->
<jsp:setProperty name="dto" property="*" />

<jsp:useBean id="dao" class="pkg.jdbc.DBConn" />
<% boolean chk = dao.mtdDBConn(dto); %>



<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
<% if (chk) { %>				
		<h3>데이터 입력 완료</h3>
<% } else { %>
		<h3>데이터 입력 오류</h3>
<% } %>
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