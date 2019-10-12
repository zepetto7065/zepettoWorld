<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/views/header.jsp" />
<style>
	html,body{
		height:100%
	}
	.org_dept{
		display:inline-block;
		width:49%;
		height:98%;
	}
	.iframe_dept{
		width:100%;
		height:100%;
	}
</style>

</head>
<body>
	<div style="height:100%">
		<div class="org_dept">
			<iframe src="/org/org_org" scrolling="no" class="iframe_dept" ></iframe>
		</div >
		<div class="org_dept">
			<iframe src="/org/org_list" scrolling="no" class="iframe_dept" ></iframe>
		</div>
	</div>


</body>
</html>