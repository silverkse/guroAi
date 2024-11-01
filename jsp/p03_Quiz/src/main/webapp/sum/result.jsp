<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int max = Integer.parseInt(request.getParameter("num1"));
int min = Integer.parseInt(request.getParameter("num2"));
if (min > max) {
	int tmp = min;
	min = max;
	max = tmp;
}

int sum = 0;
String txt = "";

for(int i = min; i <= max; i++) {
	sum += i;
	if (i < max) {
		txt += i + " + ";
	} else {
		txt += i + " = " + sum;
	}
	
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
	<div id="wrap" class="sumRes">
		<h1>누적 결과</h1>
		<p><%= txt %></p>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    