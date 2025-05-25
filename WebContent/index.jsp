<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello Java Struts Servlet</h1>
	<form action="<%= request.getContextPath() %>/helloWorld.do">
		<h:submit>GO</h:submit>
		
		<%= request.getContextPath() %>
	</form>
	
	<h:form action="/registerForm.do">
		<h:submit>Register</h:submit>
	</h:form>
</body>
</html>




