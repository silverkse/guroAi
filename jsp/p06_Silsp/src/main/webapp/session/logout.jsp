<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
%>    
<!DOCTYPE html>

<head>

</head>
<body>

	<script>
		alert("세션 소멸됨!");
		location.href="send.html";
	</script>
</body>
</html>    