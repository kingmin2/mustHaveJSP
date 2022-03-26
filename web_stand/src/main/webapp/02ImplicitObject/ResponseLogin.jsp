<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체-request</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if(id.equalsIgnoreCase("must")&&pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp"); //아이디 패스워드가 확인되면 로그인 성공페이지
}
else {
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
	.forward(request, response);	//실패시 로그인페이지.
}
%>
</body>
</html>