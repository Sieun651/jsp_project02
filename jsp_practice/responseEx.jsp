<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		정답을 받은 후에 정답이 "홍길동" 과 같다면 OK.jsp 로 리다이렉트 하기
		"홍길동"이 아니라면 NG.jsp 로 리다이렉트 하기
	 --%>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String answer = request.getParameter("answer");
		
		if(answer.equals("홍길동")){
			
			answer = URLEncoder.encode(answer, "UTF-8");
			
			response.sendRedirect("OK.jsp?answer=" + answer);
			// URL에는 ascii가 아닌 문자를 사용할 수 없다.
			// 때문에 ascii가 아닌 파라미터의 경우 인코딩을 해주어야 한다.
		}else{
			
			answer = URLEncoder.encode(answer, "UTF-8");
			response.sendRedirect("NG.jsp?answer=" + answer);
		}
		
		
	%>
	
</body>
</html>