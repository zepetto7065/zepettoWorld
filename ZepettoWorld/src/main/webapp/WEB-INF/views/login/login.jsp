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
<%-- 
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
	</div> --%>

	
			<div role="main" class="main">

				<section class="page-header page-header-classic">
					<div class="container">
						<div class="row">
							<div class="col">
								<ul class="breadcrumb">
									<li><a href="#">Home</a></li>
									<li class="active">Pages</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col p-static">
								<h1 data-title-border>Login</h1>

							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col">

							<div class="featured-boxes">
								<div class="row">
									<div class="col-md-6">
										<div class="featured-box featured-box-primary text-left mt-5">
											<div class="box-content">
												<h4 class="color-primary font-weight-semibold text-4 text-uppercase mb-3">I'm a Returning Customer</h4>
												<form action="/" id="frmSignIn" method="post" class="needs-validation">
													<div class="form-row">
														<div class="form-group col">
															<label class="font-weight-bold text-dark text-2">Username or E-mail Address</label>
															<input type="text" value="" class="form-control form-control-lg" required>
														</div>
													</div>
													<div class="form-row">
														<div class="form-group col">
															<a class="float-right" href="#">(Lost Password?)</a>
															<label class="font-weight-bold text-dark text-2">Password</label>
															<input type="password" value="" class="form-control form-control-lg" required>
														</div>
													</div>
													<div class="form-row">
														<div class="form-group col-lg-6">
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input" id="rememberme">
																<label class="custom-control-label text-2" for="rememberme">Remember Me</label>
															</div>
														</div>
														<div class="form-group col-lg-6">
															<input type="submit" value="Login" class="btn btn-primary btn-modern float-right" data-loading-text="Loading...">
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								
								</div>

							</div>
						</div>
					</div>

				</div>

			</div>

		

	
	<script type="text/javascript">
	
	
		$(document).ready((function() {

			
		}));

	</script>

</body>
</html>