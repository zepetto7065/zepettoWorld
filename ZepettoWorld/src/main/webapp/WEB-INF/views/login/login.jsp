<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../header.jsp"/>
</head>
<body>

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
												<form action="/login/loginPost" name="loginInfo" method="post" class="needs-validation">
													<div class="form-row">
														<div class="form-group col">
															<input type="text" name="userId" id="userId" class="form-control form-control-lg" required placeholder="아이디">
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
														
								<!-- 카카오 로그인 창으로 이동 -->
								<div>
							    <a href="${kakaoAuthUrl}">
						            <img src="${pageContext.request.contextPath}/resources/img/login/kakao_account_login_btn_medium_narrow.png">
						        </a>
						        </div>			
						        <br>			
						       	<!-- 네이버 로그인 창으로 이동 -->
								<div id="naver_id_login">
								<a href="${naverAuthUrl}">
								<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/>
								</a>
								</div>

							</div>
						</div>
					</div>

				</div>
				
			
			</div>
			
			<!-- oauth2.0 test area -->


	
	<script type="text/javascript">

</script>
	
</body>
</html>