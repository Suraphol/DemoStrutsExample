<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="b" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="n" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h:form action="/registerForm.do">
	<input type="hidden" name="cmd" value="form">
	<div class="container">
		<div class="row">
			<div>ชื่อ: </div>
			<div>
			<n:present name="registerForm" property="firstName" > <b:write name="registerForm" property="firstName"/></n:present>  </div>
			<div>นามสกุล: </div>
			<div>
			<n:present name="registerForm" property="surName" ><b:write name="registerForm" property="surName"/></n:present> </div>
		
		</div>
		<div class="row">
			<div>เพศ: </div>
			<div><n:present name="registerForm" property="gender" ><b:write name="registerForm" property="gender"/></n:present>
			 </div>		
		</div>
		<div class="row">
			<div>หลักสูตร: </div>
			<div>
			<n:notEmpty name="registerForm" property="course">
			<n:iterate name="registerForm" property="course" id="courseId" indexId="index">
				<%= courseId %>
			
			</n:iterate>
			</n:notEmpty>
			<n:empty name="registerForm" property="course"> ไม่ได้เลือกรายการ </n:empty>
			 </div>		
		</div>
		<div class="row">
			<div>จำนวนหลักสูตร: </div>
			<div>
			<n:present name="registerForm" property="countCourse" ><b:write name="registerForm" property="countCourse"/></n:present>
			 </div>		
		</div>
		<div class="row">
			<h:submit>กลับฟอร์ม</h:submit>		
		</div>
	</div>
	
	</h:form>
</body>
</html>