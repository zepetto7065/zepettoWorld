<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/header.jsp" />

<!DOCTYPE html>

<html>

	<body>
		<div class="body">
			<div role="main" class="main">
				<section class="page-header page-header-classic page-header-sm">
					<div class="container">
						<div class="row">
							<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
								<h1 data-title-border>Overview</h1>
							</div>
							<div class="col-md-4 order-1 order-md-2 align-self-center">
								<ul class="breadcrumb d-block text-md-right">
									<li><a href="#">About Me</a></li>
									<li class="active">Overview</li>
								</ul>
							</div>
						</div>
					</div>
				</section>
				<div class="container pt-5">

					<div class="row py-4 mb-2">
						<div class="col-md-7 order-2">
							<div class="overflow-hidden">
								<h2 class="text-color-dark font-weight-bold text-8 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="300">Yoo Sang Moon</h2>
							</div>
							<div class="overflow-hidden mb-3">
								<p class="font-weight-bold text-primary text-uppercase mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="500">Web Programmer</p>
							</div>
							<p class="lead appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="700">안녕하세요 유상문입니다. <br>나무를 보는 것이 아닌 숲을 바라보는 개발자가 되고 싶습니다.<br> 평범함을 거부하고 늘 새로운 도전을 향해 달려가는 개발자가 되겠습니다. <br>감사합니다.</p>
							<p class="pb-3 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">
								Hello. Take responsibility for the work you need. Show your newness steadily. Thank you for browsing Zepettoworld.</p>
							<hr class="solid my-4 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="900">
							<div class="row align-items-center appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1000">
								<div class="col-lg-6">
									<a href="/mail/contactMe" class="btn btn-modern btn-dark mt-3">Get In Touch</a>
									<a href="https://github.com/zepetto7065" target="_blank" class="btn btn-modern btn-primary mt-3">My github</a>
									<a href="https://blog.naver.com/adioson" target="_blank" class="btn btn-modern btn-warning mt-3">My Blog</a>
								</div>
								<div class="col-sm-6 text-lg-right my-4 my-lg-0">
									<strong class="text-uppercase text-1 mr-3 text-dark">SNS</strong>
									<ul class="social-icons float-lg-right">
										<li class="social-icons-linkedin"><a href="https://www.instagram.com/zepetto7065/" target="_blank" title="instagram"><i class="fab fa-linkedin-in"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-5 order-md-2 mb-4 mb-lg-0 appear-animation" data-appear-animation="fadeInRightShorter">
							<img src="${pageContext.request.contextPath}/resources/img/profile.jpg" class="img-fluid mb-2" alt="">
						</div>
					</div>
				</div>

				<section class="section section-default border-0 mt-5 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="1200">
					<div class="container py-4">

						<div class="row featured-boxes featured-boxes-style-4">
							<div class="col-md-6 col-lg-3 my-2">
								<div class="m-0 featured-box featured-box-primary featured-box-effect-4 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="1600">
									<div class="box-content p-0 text-left">
										<i class="icon-featured icon-screen-tablet icons text-12 m-0 p-0"></i>
										<h4 class="font-weight-bold text-color-dark">Mobile Apps</h4>
										<p class="mb-0">React, Android Native App 제작</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 my-2">
								<div class="m-0 featured-box featured-box-primary featured-box-effect-4 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="1400">
									<div class="box-content p-0 text-left">
										<i class="icon-featured icon-layers icons text-12 m-0 p-0"></i>
										<h4 class="font-weight-bold text-color-dark">Websites</h4>
										<p class="mb-0">Spring, Nodejs를 이용한 정확한 Making</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 my-2">
								<div class="m-0 featured-box featured-box-primary featured-box-effect-4 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1400">
									<div class="box-content p-0 text-left">
										<i class="icon-featured icon-magnifier icons text-12 m-0 p-0"></i>
										<h4 class="font-weight-bold text-color-dark">Server Optimization</h4>
										<p class="mb-0">환경에 따른 서버 적용 및 최적화</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 my-2">
								<div class="m-0 featured-box featured-box-primary featured-box-effect-4 appear-animation" data-appear-animation="fadeInRightShorter" data-appear-animation-delay="1600">
									<div class="box-content p-0 text-left">
										<i class="icon-featured icon-screen-desktop icons text-12 m-0 p-0"></i>
										<h4 class="font-weight-bold text-color-dark">Brand Solutions</h4>
										<p class="mb-0">독창적인 Solution 개발</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</section>

				<div class="container">

					<div class="row mt-5 py-3">
						<div class="col-md-6">
							<div class="toggle toggle-primary toggle-simple m-0" data-plugin-toggle>
								<section class="active mt-0">
									<label><b>이력</b></label>
									<div class="toggle-content">
										<p>2018. 05 - 2018. 07 - 삼성 전자 CAE팀 Smart Portal 구축</p>										
										<p>2018. 08 - 2018. 12 - 삼성 전자 CAE팀 DB 인터페이스 마이그레이션 작업</p>
										<p>2019. 04 - 2019. 12 - SK 하이닉스 Systemic 중국 Wuxi Portal 구축 (현지 출장 포함)</p>
										<p>2019. 02 - 現)씨유홀딩스 기술지원팀 주임 재직 중 </p>
									</div>
								</section>
							</div>
						</div>
						<div class="col-md-6">
							<div class="toggle toggle-primary toggle-simple m-0" data-plugin-toggle>
								<section class="active mt-0">
									<label><b>Skill</b></label>
									<div class="toggle-content">
										<p>언어 : Java, Python, PHP, jQuery, Javascript 등 ( 빠르게 숙지 가능 )</p>										
										<p>DB : Oracle, Mysql, MariaDB</p>
										<p>Tool : DBever, Oracle sqldeveloper, eclipse, VScode, Atom, workbench ( 다양한 툴 사용 좋아함 )</p>
										<p>기술 : Spring Framework, React, Nodejs, Android native App, Python Crowling, linux, AWS EC2 등 ( 기술 공부 좋아함 )</p>
										<p>Solution : Oracle Webcenter Portal 11g, 12c</p>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col py-4">
							<hr class="solid">
						</div>
					</div>
				</div>
			</div>

		</div>


	</body>
</html>
