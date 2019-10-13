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
									<a href="/contactMe" class="btn btn-modern btn-dark mt-3">Get In Touch</a>
									<a href="https://github.com/zepetto7065" target="_blank" class="btn btn-modern btn-primary mt-3">My github</a>
									<a href="https://blog.naver.com/adioson" target="_blank" class="btn btn-modern btn-warning mt-3">My Blog</a>
								</div>
								<div class="col-sm-6 text-lg-right my-4 my-lg-0">
									<strong class="text-uppercase text-1 mr-3 text-dark">follow me</strong>
									<ul class="social-icons float-lg-right">
										<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
										<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
										<li class="social-icons-linkedin"><a href="https://www.instagram.com/zepetto7065/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-5 order-md-2 mb-4 mb-lg-0 appear-animation" data-appear-animation="fadeInRightShorter">
							<img src="${pageContext.request.contextPath}/resources/img/smyoo4.jpg" class="img-fluid mb-2" alt="">
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
										<p class="mb-0">Mobile, Android Native App 제작</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 my-2">
								<div class="m-0 featured-box featured-box-primary featured-box-effect-4 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="1400">
									<div class="box-content p-0 text-left">
										<i class="icon-featured icon-layers icons text-12 m-0 p-0"></i>
										<h4 class="font-weight-bold text-color-dark">Creative Websites</h4>
										<p class="mb-0">정확하고 간결한 웹 사이트 Making</p>
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
										<p class="mb-0">유일한, 그리고 독창적인 Solution</p>
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
									<label>My Skill</label>
									<div class="toggle-content">
										<p>기본적인 구현 가능 기술입니다. Java/Spring을 이용한 Web , PHP로 클라이언트와 서버를 통신하는 안드로이드 네이티브 앱 및 HTML/CSS, JavaScript 및 Jquery, Apache 및 IIS, Tomcat, WebLogic을 이용한 서비스 구현 가능</p>
									</div>
								</section>
							</div>
						</div>
						<div class="col-md-6">
							<div class="progress-bars">
								<div class="progress-label">
									<span class="text-1">Spring</span>
								</div>
								<div class="progress mb-2">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="100%">
										<span class="progress-bar-tooltip">100%</span>
									</div>
								</div>
								<div class="progress-label">
									<span class="text-1">Apache/IIS/Tomcat/Weblogic</span>
								</div>
								<div class="progress mb-2">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="85%" data-appear-animation-delay="300">
										<span class="progress-bar-tooltip">85%</span>
									</div>
								</div>
								<div class="progress-label">
									<span class="text-1">Android</span>
								</div>
								<div class="progress mb-2">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="75%" data-appear-animation-delay="600">
										<span class="progress-bar-tooltip">75%</span>
									</div>
								</div>
								<div class="progress-label">
									<span class="text-1">HTML/CSS/javascript/jQuery</span>
								</div>
								<div class="progress mb-2">
									<div class="progress-bar progress-bar-primary" data-appear-progress-animation="85%" data-appear-animation-delay="900">
										<span class="progress-bar-tooltip">85%</span>
									</div>
								</div>
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
