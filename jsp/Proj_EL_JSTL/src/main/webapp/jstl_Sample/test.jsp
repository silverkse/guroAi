<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!-- c : core, 입출력, 변수, 제어문 --> 

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- fmt : formatting, 형식 적용(천단위 구분, 날짜/시간, 화폐) -->

<!-- prefix="접두사" => 접두사, 사용 시 접두사를 사용해서 사용한다. a, bean 등 사용해도 되지만 암묵적인 룰이 있음   -->

<%
String data = "고구마";
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
		<h1>JSTL 출력(JSP 혼용)</h1>
		
		<h2>변수 생성</h2>
		<c:set var="fruitData" value="레몬" />
		<hr>
		<h2>변수 출력(JSTL core 태그 출력)</h2>
		<c:out value="${fruitData }" />
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    