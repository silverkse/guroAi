<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!-- session="true" 가 default 값이다 = 아무것도 안적으면 true 임 -->

<%
String realID = "test";
String realPW = "1234";

String uid = request.getParameter("uid");
uid = uid.trim();
String upw = request.getParameter("upw");
upw = upw.trim();
%>

<script>

<%
if(uid.equals(realID) && upw.equals(realPW)) {
	session.setAttribute("sid", uid);
	// 세션 생성
	session.setMaxInactiveInterval(30);
%>
	alert("회원입니다!");
	location.href="/main.jsp";
<% } else { %>
	alert("아이디 또는 비밀번호를 확인해주세요.");
	history.back();
<% } %>  
</script>