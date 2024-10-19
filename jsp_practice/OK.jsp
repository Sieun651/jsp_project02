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
		request.setCharacterEncoding("UTF-8");
		String answer = request.getParameter("answer");
	%>
	
	<h2>정답 입니다.</h2>
	
	<h2>입력하신 정답 : <%=answer %></h2>
	
	<h2><a href="formEx.html">처음으로 이동</a></h2>
	
</body>
</html>