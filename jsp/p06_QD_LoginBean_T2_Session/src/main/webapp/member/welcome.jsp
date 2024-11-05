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
	<div id="wrap" class="resWrap">
<%
String sid = (String)session.getAttribute("sid");
%>
		<h1><%=sid %> 님께서 로그인하였습니다.</h1>
		<button type="button" id="btnBachk">돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
	$(function() {
		$("button#btnBachk").click(() => {
			location.href="login.jsp";
		});
	});
	</script>
</body>
</html>    