<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../header.jsp"/>
</head>
<body>

	<div class="container">	
		<div class="row" style="margin:auto;width:300px;">
			<br> <br>
			<h3>Login</h3>
			<br> <br>
			<form:form name="f" action="/" method="POST">
				<div class="form-group">
					<input placeholder="아이디" type="text" required="required" class="form-control" name="ssoId" id="ssoId">
				</div>
				<div class="form-group">
					<input placeholder="비밀번호" type="password" required="required" class="form-control" name="passWord" id="passWord">
				</div>

				<p>
					Forget your <a>Username</a> or <a>Password</a>?
				</p>
				<br>
				<div class="form-group">
					<button class="btn btn-success" type="submit" style="width: 100%;">Sign in</button>
				</div>
			</form:form>
			
		
		</div>
	</div>
	<script type="text/javascript">
	
	
		$(document).ready((function() {

			
		}));

	</script>

</body>
</html>