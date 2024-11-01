<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));

int min = num1;
int max = num2;
if (min > max) {
	min = num2;
	max = num1;
}

String resTxt = "";
int sum = 0;
for (int i = min; i <= max; i++) {
	resTxt += i;
	if (i<max) {
		resTxt += " + ";
	} else {
		resTxt += " = ";
	}
	sum += i;
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
	<div id="wrap" class="resWrap">
		
		<h1>누적결과</h1>
		<%=resTxt + sum %>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    