<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="loginChk" class="pkg.mem.LoginBean" />
<jsp:setProperty name="loginChk" property="*" />

<script>
<%
if(loginChk.mtdLoginChk()) {
	session.setAttribute("sid", loginChk.getUid());
	session.setMaxInactiveInterval(30);
%>
	location.href="welcome.jsp";
<%
} else {
%>
	alert("일치하는 정보가 없습니다.");
	history.back();
<%
}
%>
</script>