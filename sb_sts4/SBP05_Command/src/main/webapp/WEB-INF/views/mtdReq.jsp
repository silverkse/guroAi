<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		
		<h1>request 데이터수신</h1>
		<hr>
		
		<ul>
			<li>아이디 : ${uid }</li>
			<li>이름 : ${uname }</li>
		</ul>
		<ul>
			<li>커맨드 객체 사용</li>
			<!-- controller에서 생성한 객체의 이름으로 사용한다. -->
			<li>아이디 : ${member.uid }</li>
			<li>이름 : ${member.uname }</li>
		</ul>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    