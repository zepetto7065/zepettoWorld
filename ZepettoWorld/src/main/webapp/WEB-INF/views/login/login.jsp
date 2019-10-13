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
							<div class="col p-static">
								<h1 data-title-border>ZepettoWorld</h1>

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
												<form action="/" name="loginInfo" method="post" class="needs-validation">
													<div class="form-row">
														<div class="form-group col">
															<input type="text" name="ssoId" id="ssoId" class="form-control form-control-lg" required placeholder="아이디">
														</div>
													</div>
													<div class="form-row">
														<div class="form-group col">
															<a class="float-right" href="#">비밀번호 찾기</a>
															<input type="password" name="passWord" id="passWord" class="form-control form-control-lg" required placeholder="비밀번호">
														</div>
													</div>
													<div class="form-row">
														<div class="form-group col-lg-6">
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input" id="rememberme">
																<label class="custom-control-label text-2" for="rememberme">아이디 기억하기</label>
															</div>
														</div>
														<div class="form-group col-lg-6">
															<input type="submit" value="로그인" class="btn btn-primary btn-modern float-right" data-loading-text="Loading...">
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
	
	


	</script>

</body>
</html>