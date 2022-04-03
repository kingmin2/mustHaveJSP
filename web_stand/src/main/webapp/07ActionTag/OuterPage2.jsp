<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>외부파일</h2>
	<%
	//String 타입 변수 선언
	String newVar2 = "백제 온조왕";
	%>
	<ul>
		<li>page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request 영역 속성 : <%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>