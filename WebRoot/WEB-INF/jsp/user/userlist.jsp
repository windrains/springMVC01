<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="add">添加</a><br/>

	<%-- ======用户列表查询(遍历Map或Model)=======<br/>
	<c:forEach items="${userList }" var="ul">
		id:${ul.value.id }=====
		username:${ul.value.username }=====
		password:${ul.value.password }=====
		email:${ul.value.email }=====<br/>
	</c:forEach> --%>
	
	
	======用户列表查询(遍历ArrayList)=======<br/>
	<c:forEach items="${userList }" var="user">
		id:${user.id }~~~~~~~
		username:${user.username }~~~~~~~
		password:${user.password }~~~~~~~
		email:${user.email }~~~~~~~<br/>
	</c:forEach>
	
</body>
</html>