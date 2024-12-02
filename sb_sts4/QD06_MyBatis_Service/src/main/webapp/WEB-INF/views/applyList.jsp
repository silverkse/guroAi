<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="applyList">
		<header id="header" class="dFlex">
			<h1>지원 정보 리스트</h1>
			<button type="button" id="goApply">입력</button>		
		</header>
		<div id="listHeader" class="dFlex listRow">
			<p>번호</p>
			<p>이름</p>
			<p>연락처</p>
			<p>분야</p>
			<p>지원동기</p>
			<p>등록일</p>
		</div>
		<c:forEach var="applyList" items="${applyList }">
			<div class="dFlex listRow dataRow">
				<p class="num">${applyList.num }</p>
				<p>${applyList.userName }</p>
				<p>${applyList.phone }</p>
				<p>${applyList.field }</p>
				<p class="txtLength">${applyList.motive }</p>
				<p>
					<fmt:formatDate value="${applyList.regTM }"/>
				</p>
			</div>
		</c:forEach>
		
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    