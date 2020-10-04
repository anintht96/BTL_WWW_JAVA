<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Đăng ký</title>
</head>
<body>
	<h3>Form Đăng ký</h3>
	<form:form action="${pageContext.request.contextPath }/form" method="post" modelAttribute="taiKhoanInfo">
		Name: <form:input path="username" type="text" name="name" value="" /><br />
		<br />
		<form:errors path="username" cssStyle="color:red;display:block"></form:errors>
		<%-- Email: <input type="text" name="email" value="" /><br />
		<br />
		<form:errors path="objItem.email" cssStyle="color:red;display:block"></form:errors>

		Age : <input type="text" name="age" value="" /><br />
		<br />
		<form:errors path="objItem.age" cssStyle="color:red;display:block"></form:errors>

		Phone : <input type="text" name="phone" value="" /><br />
		<br />
		<form:errors path="objItem.phone" cssStyle="color:red;display:block"></form:errors> --%>

		<input type="submit" name="submit" value="Đăng ký" /><br />
		<br />
	</form:form>
</body>
</html>