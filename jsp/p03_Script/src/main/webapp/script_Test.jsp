<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  -->
<%//-- --//%>


<%! // 선언문
int num;

public void mtd() {
	String txt = "오렌지";
	// jsp 파일 이름이 클래스 이름이 된다. 이 파일의 경우 script_Test
}
%>
<%! %> <!-- 이건 필드 영역(선언영역)이라서 System.out.print() 에러 발생 함
			왜? syso는 실행구문이라 메서드 안에서 수행 되어야 함
			그런데, 이 선언문을 쓸 일은 거의 없다. -->
			
			
<%  // 스크립트릿
int num;
// System.out.print("OK");
/*
out.print("");
*/
out.println("<br>");	// 브라우저에서 줄바꿈 없음, 무조건 <br> 태그 사용
%>
<% %> <!-- 이건 메서드 영역이라 System.out.print() 해도 에러가 없음 -->


<%=3 %> 	<!-- out.print() 역할, =는 띄어쓰기 하면 안됨 -->
<%//= 3 %>  

<!-- 
JSP Script
1. 선언문 Declaration(디클러레이션)
2. 스크립트릿 Scriptlet
3. 표현식 Expression(익스프레션)
4. 주석 Comment(코멘트)
 -->