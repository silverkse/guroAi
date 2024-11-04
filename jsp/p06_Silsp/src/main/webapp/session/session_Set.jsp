<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>세션설정</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
<%
String uid = request.getParameter("uid");

// 세션설정 시작
// 세션키 = 세션 이름
// session.setAttribute("세션키", 세션을 적용할 데이터);
session.setAttribute("sKey", uid); 	// 30분짜리 세션 부여(sKey라는 이름으로 uid에)
session.setMaxInactiveInterval(30);	// 이걸 쓰면 세션 유지 시간을 조절 -> 초단위, 직관적으로 보이게 n*60으로 표기한다.

String  sKey = (String)session.getAttribute("sKey");
out.print("<h3>세션 sKey 속성 값 : " + sKey + "</h3>");
out.print("<h3>세션 아이디(세션 난수) : " + session.getId() + "</h3>");
out.print("<h3>실제경로 확인 : " + application.getRealPath("/") + "</h3>");
%>    
	<button type="button" onclick="fnLogout()">로그아웃</button>	
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		function fnLogout() {
			location.href="logout.jsp"
		}
	</script>
</body>
</html>    