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
	<div id="wrap" class="res">
		<h1>수신 데이터</h1>
		<hr>
		<p>이름 : ${dataList.rName }</p>
		<p>연락처 : ${dataList.phone }</p>
		<p>지원 분야 : ${dataList.field }</p>
		<p>지원 동기 : ${dataList.motive }</p>
		<button type="button" onclick="location.href='/'">입력</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    