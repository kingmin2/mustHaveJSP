<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 선언부 : 스크립틀릿이나 표현식에서 사용할 멤버 변수나 메서드를 선언-->
<%!
public int add(int num1, int num2){
	return num1+num2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립틀릿 : 자바 코드 작성 -->
<%
int result = add(10,20);
%>
덧셈 결과 1 : <%=result %><br>
덧셈 결과 2 : <%=add(30,40) %><br>
</body>
</html>