<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--  세션이란?
	클라이언트가 웹 브라우저를 통해 서버에 접속한 후 용무를 처리하고 
	웹 브라우저를 닫아 서버와의 접속을 종료하는 하나의 단위
 -->
<%
//날짜 표시 형식 지정
SimpleDateFormat dataFormat = new SimpleDateFormat("HH:MM:SS");

long creationTime = session.getCreationTime();
String creationTimeStr = dataFormat.format(new Date(creationTime));

long lastTime = session.getLastAccessedTime();
String lastTimeStr = dataFormat.format(new Date(lastTime));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h2>Session 설정 확인</h2>
 	<ul>
 		<li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
 		<li>세션 아이디 : <%= session.getId() %></li>
 		<li>최초 요청 시각 : <%= creationTimeStr %></li>
 		<li>마지막 요청 시각 : <%= lastTimeStr %></li>
 	</ul>
 
</body>
</html>