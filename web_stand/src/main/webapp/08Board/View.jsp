<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num"); //일련번호 받기
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"></jsp:include>
<h2>회원제 게시판 - 상세보기 (View)</h2>
<form name="writeFrm">
	<input type="hidden" name="num" value="<%= num%>">
	
	<table border="1" width="90%">
		<tr>
			<td>번호</td>
			 
		</tr>
	</table>
	
</form>
</body>
</html>