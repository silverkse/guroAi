<%@page import="pack.jdbc.DataBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="pack.jdbc.DBConn" />
<%
List<DataBean> dataList = new ArrayList<>();
dataList = dao.getAllData();
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>JDBC 조회</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>상품목록</h1>
		
		<div id="goodsListArea">
			
			<div id="listHeader" class="listCol dFlex">
				<span>번호</span>
				<span>상품코드</span>
				<span>상품명</span>
				<span>가격</span>
				<span>재고</span>
			</div>
			<!-- div#listHeader, 게시판 목록의 열제목 -->
			

<% for(DataBean data : dataList) { %>
			<div class="listRow listCol dFlex">
				<span><%=data.getNum() %></span>
				<span><%=data.getGoodsCode() %></span>
				<span><%=data.getGoodsName() %></span>
				<span><%=data.getPrice() %></span>
				<span><%=data.getCnt() %></span>
			</div>
			<!-- div.listCol, 게시판 목록의 내용 -->
<%} %>		
						
		</div>
		<!-- div#goodsListArea -->
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    