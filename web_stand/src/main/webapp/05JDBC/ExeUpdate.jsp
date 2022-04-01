<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 추가 테스트</h2>
	<%
	//DB 연결
	JDBConnect jdbc = new JDBConnect();
	
	String id = "test1";
	String pass = "1111";
	String name = "회원1";

	//쿼리문
	String sql = "insert into member values(?,?,?,sysdate)";
	PreparedStatement pstmt = jdbc.conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	
	//쿼리 수행
	int result = pstmt.executeUpdate();
	out.println(result + "행이 입력되었습니다.");
	
	jdbc.close();
	%>
</body>
</html>