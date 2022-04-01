<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "scott", "tiger");
	
	if(conn != null) out.println("연결성공");
	else out.println("연결실패");
	conn.close();
%>
</body>
</html>