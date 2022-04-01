<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<!-- 1 회원인증 실패시. 포워드. -->
	<span style="color: red; font-size: 1.2em;">
		<%= request.getAttribute("LoginErrMsg") == null?
				"" : request.getAttribute("LoginErrMsg") %>
	</span>
	<%
	if(session.getAttribute("UserId") == null){
		//2. 로그인 로그아웃
	%>	
	<script type="text/javascript">
	function validateForm(form) {
		if(!form.user_id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		if(form.user_pw.value == ""){
			alert("패스워드를 입력하세요.");
			return false;
		}
	}
	</script>
	<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this);">
		아이디 : <input type="text" name = "user_id"><br>
		패스워드 : <input type="password" name="user_pw"><br>
		<input type="submit" value="로그인하기">
	</form>	
	<%
	} else {
	%>
		<%= session.getAttribute("UserName") %>회원님, 로그인하셨습니다.
		<a href="Logout.jsp">[로그아웃]</a>
	<% 	
	}
	%>
</body>
</html>