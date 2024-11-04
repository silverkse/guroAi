<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>수신페이지</title>
	<link rel="stylesheet" href="/style/style.css?v">
	<style>
		p {
		font-size: 30px;
		font-weight: bold;
		}
	</style>
</head>
<body>
	<div id="wrap">
<%
String data = request.getParameter("test");
String ipAddr = request.getRemoteAddr();
%>		
		<p>전송 데이터 : <%=data %></p>
		<p>(클라이언트)접속 IP : <%=ipAddr %></p>
<%
response.sendRedirect("https://www.naver.com");
%>		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
// 		location.href="https://www.naver.com";
	</script>
</body>
</html>    