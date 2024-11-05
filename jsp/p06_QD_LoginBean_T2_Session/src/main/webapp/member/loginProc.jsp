<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<!-- session="true" 가 default 값이다 = 아무것도 안적으면 true 임 -->

<jsp:useBean id="loginBean" class="pkg.mem.LoginBean" />
<jsp:setProperty name="loginBean" property="*" />
<%

boolean chk = loginBean.chkAccount(session, request);

%>

<script>
<% if (chk) { %>
	alert("로그인 되었습니다.");	
	location.href="welcome.jsp";
<% } else { %>
	alert("일치하는 정보가 없습니다.");
	history.bachk();
<% } %>



</script>