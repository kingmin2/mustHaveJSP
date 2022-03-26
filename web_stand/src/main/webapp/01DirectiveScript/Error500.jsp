<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage</title>
</head>
<body>
<%
int myAge = Integer.parseInt(request.getParameter("age"))+10;
out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
<!-- 
	 age 매개 변수 없기 때문에 null 값으로 에러 발생
     에러발생시 해결하는 방법
     1. try/catch 사용
     2. errorPage, isErrorPage 속성을 사용하여 디자인이 적용된 페이지로 대체
-->
</body>
</html>