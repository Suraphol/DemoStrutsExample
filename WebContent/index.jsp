<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello Java Struts Servlet</h1>
	<form action="<%= request.getContextPath() %>/helloWorld.do">
		<h:submit>GO</h:submit>
		<h1>Test</h1>
		
		<%= request.getContextPath() %>
		
		<%= 1+1 %>
		<% for(int i=0;i<5;i++){ %>
			<li> AA <%= i*2 %></li>
		<% } %>
		
		<%= new Date() %>
		<%-- Test --%>
		
	</form>
	
	<h:form action="/registerForm.do">
		<h:submit>Register</h:submit>
	</h:form>
</body>
</html>




