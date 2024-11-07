<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="pack.jdbc.DBConn" />
    
<%
int delNum = Integer.parseInt(request.getParameter("delNum"));
boolean tfRes = dao.mtdDelete(delNum);
%>
<script>
if(<%=tfRes %>) {
	alert("삭제가 완료되었습니다.");
	location.href="list.jsp";
} else {
	alert("삭제에 실패했습니다.");
	history.back();
}
</script>