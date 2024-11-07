
<%@page import="pack.jdbc.DataBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="pack.jdbc.DBConn" />
<%
dao.mtdDBConn();
List<DataBean> dataList = dao.mtdSelect();
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
				<span>삭제</span>
			</div>
			<!-- div#listHeader, 게시판 목록의 열제목 -->
			

<% for(DataBean data : dataList) { %>
			<div class="listRow listCol dFlex">
				<span class="num"><%=data.getNum() %></span>
				<span><%=data.getGoodsCode() %></span>
				<span><%=data.getGoodsName() %></span>
				<span><%=data.getPrice() %></span>
				<span><%=data.getCnt() %></span>
				<span class="delBtn">&times;</span>
			</div>
			<!-- div.listCol, 게시판 목록의 내용 -->
<%} %>		
			<form action="updateProc.jsp">
				<div id="inputArea">
					<label>
						<span>수정할 상품번호</span>
						<input type="text" name="num" id="num">
					</label>
					<label>
						<span>수정할 상품가격</span>
						<input type="text" name="price" id="price">
					</label>
				</div>
				<div id="btnArea">
					<button>수정하기</button>
				</div>
			</form>	
		</div>
		<!-- div#goodsListArea -->
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    