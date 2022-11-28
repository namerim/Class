<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP 예제 :</title>
</head>
<body>
	<%@ page import="java.util.Enumeration, java.util.Date" %>
	<h1>세션 예제</h1>
	<hr><h2>세션 만들기</h2>
	<%
		session.setAttribute("id", "javajsp");
		session.setAttribute("pwd", "jdktomcat");
	%>
	<hr><h2>세션 조회</h2>
	세션 ID : <%= session.getId() %><br>
	세션 CreationTime : <%= new Date(session.getCreationTime()) %><br><br>	
	
	<%
		Enumeration<String>e = session.getAttributeNames();
	while(e.hasMoreElements()) {
		String name = e.nextElement();
		String value = (String) session.getAttribute(name);
		out.println("세션 name : " + name + ", " );
		out.println("세션 value : " + value + "<br>" );
		}
	%>
	
	<br>세션 Invalidate : <% session.invalidate(); %>
</body>
</html>
