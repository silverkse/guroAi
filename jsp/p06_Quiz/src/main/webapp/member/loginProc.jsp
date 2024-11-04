<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uidChk = "test";
String upwChk = "1234";
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");
if (uidChk.equals(uid) && upwChk.equals(upw)) {
	session.setAttribute("sKey", uid);
	session.setMaxInactiveInterval(30);
	response.sendRedirect("../main.jsp");
} else {
	
%>    
<!DOCTYPE html>
<html lang="ko">

<body>

	<script src="/script/jquery-3.7.1.min.js"></script>
	<script>
		alert("아이디와 비밀번호가 일치하지 않습니다.\n다시 시도해주세요.");
		location.href="login.jsp";
	</script>
<%
}
%>
</body>
</html>    