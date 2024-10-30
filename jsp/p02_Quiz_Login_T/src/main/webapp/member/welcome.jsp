<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
<%
String uid = request.getParameter("uid");
%>
		<%
		out.print(uid + "님께서 로그인하셨습니다.<br>");
		%>
		<%= uid + "님께서 로그인하셨습니다." %>
		<button>돌아가기</button>
		<!-- 표현식(Expression), 버그가 있음 -->
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    