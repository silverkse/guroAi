<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="pkg.dao.Join" />

<%
request.setCharacterEncoding("UTF-8");
String userId = request.getParameter("userId");

int rtnCnt = 0;
if (userId != null) {
	rtnCnt = dao.chkUserId(userId);
}
%>    

<%
// 아래의 값을 최종적으로 전달하게 되는데, 아래 값 외의 주석이나 출력 구문이 있으면 해당 내용이 전부 전달되기 때문에 원하는 값을 못 얻을 수 있다.
// 이 주석을 jsp로 작성한 것도 마찬가지인 이유다.
// 아래의 값만 최종 전달 되는 이유: jsp 구문들은 ajax에서 수신 타입을 html로 선택했기 때문에 전달이 안된다.
// 그러나 <%= 기호는 html에 직접 출력하는 것이기 때문에 아래의 내용만이 ajax에서 수신받는 내용이 되는 것이다.
%>
<%=rtnCnt %>
