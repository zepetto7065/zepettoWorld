<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/views/header.jsp" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>

		<div class="body">

			<div role="main" class="main">

				<section class="page-header page-header-modern bg-color-light-scale-1 page-header-md ">
					<div class="container-fluid">
						<div class="row align-items-center">

							<div class="col">
								<div class="row">
									<div class="col-md-12 align-self-center p-static order-2 text-center">
										<div class="overflow-hidden pb-2">
											<h1 class="text-dark font-weight-bold text-9 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="100">My Portfolio</h2>
										</div>
									</div>
									<div class="col-md-12 align-self-center order-1">
										<ul class="breadcrumb d-block text-center appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="300">
											<li><a href="#">About Me</a></li>
											<li><a href="#">Portfolio</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>

				<div class="container py-2">

					<ul class="nav nav-pills sort-source sort-source-style-3 justify-content-center" data-sort-id="portfolio" data-option-key="filter" data-plugin-options="{'layoutMode': 'fitRows', 'filter': '*'}">
						<li class="nav-item active" data-option-value="*"><a class="nav-link text-1 text-uppercase active" href="#">Show All</a></li>
						<li class="nav-item" data-option-value=".websites"><a class="nav-link text-1 text-uppercase" href="#">Websites</a></li>
						<li class="nav-item" data-option-value=".logos"><a class="nav-link text-1 text-uppercase" href="#">App Application</a></li>
<!-- 						<li class="nav-item" data-option-value=".brands"><a class="nav-link text-1 text-uppercase" href="#">Brands</a></li>
						<li class="nav-item" data-option-value=".medias"><a class="nav-link text-1 text-uppercase" href="#">Medias</a></li> -->
					</ul>

					<div class="sort-destination-loader sort-destination-loader-showing mt-3">
						<div class="row portfolio-list sort-destination" data-sort-id="portfolio">

							<div class="col-lg-12 isotope-item mt-4 websites">
								<div class="row">
									
									<div class="col-lg-6">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
														<img src="${pageContext.request.contextPath}/resources/img/skhynixsystemic_logo.jpg" class="img-fluid border-radius-0" alt="">

														<span class="thumb-info-action">
															<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6">

										<div class="overflow-hidden">
											<h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600">SKHYSI CHINA SKYNET 구축</h2>
										</div>

										<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">SK하이닉스 Systemic 중국 Wuxi 현지 공장 Oracle Webcenter Portal 구축</p>

										<ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Client:</strong> SK 하이닉스</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Date:</strong> 2019.04 - 2019.12 (2개월 중국 출장 포함)</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Skills:</strong> <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">SPRING</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVA</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">ORACLE</a>
											<a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">Webcenter</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">WebLogic</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">IIS</a></li>
										</ul>

									</div>
									
								</div>
							</div>
							
							<div class="col-lg-12 isotope-item mt-4 websites">
								<div class="row">
									
									<div class="col-lg-6">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
														<img src="${pageContext.request.contextPath}/resources/img/samsung_logo.png" class="img-fluid border-radius-0" alt="">

														<span class="thumb-info-action">
															<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6">

										<div class="overflow-hidden">
											<h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600">인프라 기준 정보 마이그레이션 프로젝트</h2>
										</div>

										<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">인터페이스 변경에 대한 마이그레이션 작업 및 구축 </p>

										<ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Client:</strong> 삼성 전자</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Date:</strong> 2018.08 - 2018.12</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Skills:</strong> <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">SPRING</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVA</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">ORACLE_Procedure</a>
										</li>
										</ul>

									</div>
									
								</div>
							</div>
							
							<div class="col-lg-12 isotope-item mt-4 websites">
								<div class="row">
									
									<div class="col-lg-6">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
														<img src="${pageContext.request.contextPath}/resources/img/samsung_logo.png" class="img-fluid border-radius-0" alt="">

														<span class="thumb-info-action">
															<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6">

										<div class="overflow-hidden">
											<h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600">SMART POTAL 차세대 구축 프로젝트</h2>
										</div>

										<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">삼성 전자 SMART PORTAL 구축 프로젝트 </p>

										<ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Client:</strong> 삼성 전자</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Date:</strong> 2018.05 - 2018.08</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Skills:</strong> <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">SPRING</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVA</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">ORACLE</a>
											<a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">HTML</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">Apache</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVASCRIPT</a></li>
										</ul>

									</div>
									
								</div>
							</div>
						
							
							<div class="col-lg-12 isotope-item mt-4 websites">
								<div class="row">
									
									<div class="col-lg-6">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
														<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid border-radius-0" alt="">

														<span class="thumb-info-action">
															<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6">

										<div class="overflow-hidden">
											<h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600">Zepetto World</h2>
										</div>

										<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">現 사이트 구축 및 개인 포트폴리오 웹 사이트 구축</p>

										<ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Client:</strong> 개인 포트폴리오</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Date:</strong> 2019.05 - 현재ing</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Skills:</strong> <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">SPRING</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVA</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">MySQL</a>
											<a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">jQuery</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">Tomcat</a></li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Github Address: <a href="https://github.com/zepetto7065/ZepettoWorld2" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">https://github.com/zepetto7065/ZepettoWorld2</a></strong> </li>
										</ul>

									</div>
									
								</div>
							</div>
							
							<div class="col-lg-12 isotope-item mt-4 logos">
								<div class="row">
									
									<div class="col-lg-6">
										<div class="portfolio-item">
											<a href="#">
												<span class="thumb-info thumb-info-no-zoom thumb-info-lighten border-radius-0 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="100">
													<span class="thumb-info-wrapper border-radius-0">
														<img src="${pageContext.request.contextPath}/resources/img/projects/project-2-short.jpg" class="img-fluid border-radius-0" alt="">

														<span class="thumb-info-action">
															<span class="thumb-info-action-icon bg-dark opacity-8"><i class="fas fa-plus"></i></span>
														</span>
													</span>
												</span>
											</a>
										</div>
									</div>
									
									<div class="col-lg-6">

										<div class="overflow-hidden">
											<h2 class="text-color-dark font-weight-bold text-5 mb-2 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="600">App Application</h2>
										</div>

										<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">수강신청 어플입니다.</p>

										<ul class="list list-icons list-primary list-borders text-2 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1200">
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Client:</strong> 개인 포트폴리오</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Date:</strong> July 2019</li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Skills:</strong> <a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">Android</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">JAVA</a><a href="#" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">PHP</a></li>
											<li><i class="fas fa-caret-right left-10"></i> <strong class="text-color-primary">Github Address: <a href="https://github.com/zepetto7065/Android_App_Registration" class="badge badge-dark badge-sm badge-pill px-2 py-1 ml-1">https://github.com/zepetto7065/Android_App_Registration</a></strong> </li>
										
										</ul>

									</div>
									
								</div>
							</div>
							
							
						</div>
					</div>

				</div>

			</div>

		</div>
	</body>
</html>