<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>BBS 목록보기(Map 적용 item)</h1>
		<p id="articleCnt">전체 글 수 : ${articleCnt }</p>
		<hr>
		<table>
			<tbody>
				<tr>
					<th><input type="checkbox" name="allDelChk" id="allDelChk"></th>
					<th style="width: 80px">번호</th>
					<th style="width: 100px">상품명</th>
					<th style="width: 120px">상품코드</th>
					<th style="width: 120px">가격</th>
					<th style="width: 80px">재고</th>
					<th style="width: 120px">등록시간</th>
				</tr>
				<c:forEach var="goodsList" items="${mtdGoodsList }">
					<tr>
						<td>
							<input type="checkbox" name="delChk" class="delChk">
							<input type="hidden" value="${goodsList.num }">
						</td>
						<td>${goodsList.num}</td>
						<td>${goodsList.goodsName}</td>
						<td>${goodsList.goodsCode}</td>
						<td>${goodsList.price }</td>
						<td>${goodsList.cnt }</td>
						<td>${goodsList.regTM }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="4" style="text-align: right">
						<button type="button" onclick="location.href='/writeForm'">글쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    