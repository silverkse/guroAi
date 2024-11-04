<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// out.print(session.getAttribute("sKey"));
String menu2 = "회원가입";
String menu3 = "로그인";
String loginTxt = "로그아웃";
boolean isLoggedIn = false;
if(session.getAttribute("sKey") != null) {
	menu2 = "마이페이지";
	menu3 = "로그아웃";
	loginTxt = session.getAttribute("sKey").toString() + "님 로그인";
	isLoggedIn = true;
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
		<h1>GNB 메뉴 Login 세션처리</h1>
		<div id="gnbWrap" class="dFlex">
			<div class="menu homeMenu">HOME</div>
			<div class="menuBar">|</div>
			<div class="menu"><%=menu2 %></div>
			<div class="menuBar">|</div>
			<div class="menu" id="logInOutBtn"><%=menu3 %></div>
		</div>
		<hr>
		<p>메인페이지(<%=loginTxt %> 상태)</p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
	$(function () {
		let isLoggedIn = <%= isLoggedIn %>;
		$("div#logInOutBtn").click(function() {
			if(isLoggedIn) {
				location.href="member/logout.jsp";			
			} else {
				location.href="member/login.jsp";
			}
		});
	});
	
	</script>
	<script src="/script/script.js"></script>
</body>
</html>    