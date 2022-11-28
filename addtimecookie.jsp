<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP 예제]</title>
</head>
<body>
	<h1>현재 시각을 쿠키로 저장</h1>
	<hr>
	String now = new java.util.Date().toString(); <br>
	Cookie cookie = new Cookie("lastconnect", "now"); <br>
	cookie.setMaxAge(10); //초 단위 : 10초 <br>
	response.addCookie(cookie); <br>
	
	<%
		String now = new java.util.Date().toString();
		Cookie cookie = new Cookie("lastconnect", "now");
		cookie.setMaxAge(10); //초 단위 : 10초 <br>
		response.addCookie(cookie);
	%>
	<hr><a href=getcookies.jsp >쿠키 조화</a>

</body>
</html>
