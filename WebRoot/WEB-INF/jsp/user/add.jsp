<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 不指定action，则提交到/add -->
	<form:form modelAttribute="user" method="post">         <!-- user是从controller传过来的空对象，赋值后传到相应controller -->
		id:<form:input path="id" /><br/>
		username:<form:input path="username"/><br/>
		password:<form:input path="password"/><br/>
		email:<form:input path="email"/><br/>
		<input type="submit" value="提交" />
	</form:form>
</body>
</html>