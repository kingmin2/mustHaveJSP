<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//1.회원 인증 정보 속성 삭제
session.removeAttribute("UserId");
session.removeAttribute("UserName");

//모든 속성 한번에 삭제
session.invalidate();

//속성 삭제후 페이지 이동
response.sendRedirect("LoginForm.jsp");
%>
</body>
</html>