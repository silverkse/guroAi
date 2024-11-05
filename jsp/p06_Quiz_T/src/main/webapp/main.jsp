<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>메인</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
<%
String sid = (String) session.getAttribute("sid");
String loginMsg = "";

%>
	<div id="wrap">
<%-- 		<%="sid : " + sid %> --%>
		<h1>GNB 메뉴 Login 세션처리</h1>
		<nav id="gnb">
			<ul id="mainMenu" class="dFlex">
		<% if(sid == null) { 
			loginMsg = "로그아웃 상태";
		%>
				<!-- 로그아웃 상태 -->
				<li class="mainLi selected"><a href="#">HOME</a></li>
				<li class="mainLi">|</li>
				<li class="mainLi"><a href="#">회원가입</a></li>
				<li class="mainLi">|</li>
				<li class="mainLi"><a href="member/login.jsp">로그인</a></li>
		<% } else {
			loginMsg = sid + "님 로그인 상태";	
		%> 				<!-- 로그인 상태 -->
				<li class="mainLi selected"><a href="#">HOME</a></li>
				<li class="mainLi">|</li>
				<li class="mainLi"><a href="#">마이페이지</a></li>
				<li class="mainLi">|</li>
				<li class="mainLi"><a href="member/logout.jsp">로그아웃</a></li>
		<% } %>
			</ul>
		</nav>
		<hr>
		<main id="main">
			<p>
				메인페이지
				(<span id="res"><%=loginMsg %></span>)
			</p>
		</main>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    