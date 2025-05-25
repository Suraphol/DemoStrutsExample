<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="b" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h:form action="/registerForm.do">
	<input type="hidden" name="cmd" value="submit">
	<div class="container">
		<div class="row">
			<div>ชื่อ: </div>
			<div><nested:text name="registerForm" property="firstName"/></div>
			<div>นามสกุล: </div>
			<div><nested:text name="registerForm" property="surName"/></div>
		
		</div>
		<div class="row">
			<div>หลักสูตร: </div>
			<div><h:radio property="gender" value="MALE"  >Male</h:radio>&nbsp;
			<h:radio property="gender" value="FEMALE">Female</h:radio>&nbsp;
			 </div>		
		</div>
		<div class="row">
			<div>หลักสูตร: </div>
			<div><h:checkbox property="course" value="JAVA">JAVA</h:checkbox>&nbsp;
			<h:checkbox property="course" value="JSP">JSP</h:checkbox>&nbsp;
			<h:checkbox property="course" value="JavaScrip">JavaScrip</h:checkbox>&nbsp;
			<h:checkbox property="course" value="C++">C++</h:checkbox>&nbsp;
			 </div>		
		</div>
	
	
		<div class="row">
			<h:submit>ลงทะเบียน</h:submit>		
		</div>
	</div>
	
	</h:form>
</body>
</html>