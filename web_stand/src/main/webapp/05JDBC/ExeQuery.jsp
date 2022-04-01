<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<h2>회원 목록 조회 테스트</h2>
<%

	JDBConnect jdbc = new JDBConnect();
	String sql = "select empno, ename, job, hiredate, sal from emp_temp";
	Statement stmt  = jdbc.conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		int empno = rs.getInt(1);
		String ename = rs.getString(2);
		String job = rs.getString(3);
		Date hiredate = rs.getDate(4);
		int sal = rs.getInt(5);
		out.println(String.format("%d, %s, %s, %s, %d", empno, ename, job, hiredate, sal)+"<BR>");
	}
	jdbc.close();
	
%>

</body>
</html>