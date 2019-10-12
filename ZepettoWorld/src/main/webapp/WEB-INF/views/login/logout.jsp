<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/views/header.jsp"/>
</head>
<body>
<%
	session.invalidate();
	response.sendRedirect("/");
%>
</body>
</html>