<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>

<html>
	<head>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <jsp:include page="/WEB-INF/views/header.jsp" />

	</head>
	<body>
	
		<div class="body">



				<div class="container pb-1">
						
					<div class="row pt-4">
						<div class="col">
							<div class="overflow-hidden mb-3">
								<h2 class="word-rotator slide font-weight-bold text-8 mb-0 appear-animation" data-appear-animation="maskUp">
									<span>The New Way to </span>
									<span class="word-rotator-words bg-primary">
										<b class="is-visible">Success</b>
										<b>Advance</b>
										<b>Progress</b>
									</span>
								</h2>
							</div>
						</div>
					</div>

					<div class="row mb-2">
						<div class="col-lg-10">
							<div class="overflow-hidden">
								<p class="lead mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="250">
<!-- 									You will never know until <span class="alternative-font">you try.</span> &nbsp;&nbsp;&nbsp;Step by step goes a long way. Welcome to Zepetto World!
 -->
 									개인 포트폴리오 커뮤니티 웹 사이트입니다 <span class="alternative-font"> Welcome to ZepettoWorld!</span>
 								</p>
							</div>
						</div>
					</div>
					
				</div>
				
				<div class="container py-2">
					
					<div class="row">
						
						<!-- carousel area -->
						<div class="col-lg-8">
							  <div id="myCarousel" class="carousel slide" data-ride="carousel">
							    <!-- Indicators -->
							    <ol class="carousel-indicators">
							      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							      <li data-target="#myCarousel" data-slide-to="1"></li>
							      <li data-target="#myCarousel" data-slide-to="2"></li>
							    </ol>
							
							    <!-- Wrapper for slides -->
							    <div class="carousel-inner" style="height:175px">
							      <div class="item active">
							        <img src="${pageContext.request.contextPath}/resources/img/리니지광고.jpg" alt="banner_001" style="width:100%;">
							      </div>
							
							      <div class="item">
							        <img src="${pageContext.request.contextPath}/resources/img/쇼핑광고.jpg" alt="banner_002" style="width:100%;">
							      </div>
							    
							      <div class="item">
							        <img src="${pageContext.request.contextPath}/resources/img/할인광고.jpg" alt="banner_003" style="width:100%;">
							      </div>
							    </div>
							
							    <!-- Left and right controls -->
							    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
							      <span class="glyphicon glyphicon-chevron-left"></span>
							      <span class="sr-only">Previous</span>
							    </a>
							    <a class="right carousel-control" href="#myCarousel" data-slide="next">
							      <span class="glyphicon glyphicon-chevron-right"></span>
							      <span class="sr-only">Next</span>
							    </a>
							  </div>
						</div>
						
						
						<!-- TeamRoom area -->
						<div class="col-lg-4">
							<div class="tabs" >
								<div class="tab-content" style="border:1px solid rgba(0, 0, 0, 0.25);height:176px">
									<div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="450" style="width:285px;padding-top: 10px;">
										<c:if test="${signedUser eq null}">
										<div style="margin-left:15px">
											<span>zepetto world에 로그인해 주세요.</span>
											<a href="/login/login" class="btn btn-modern btn-primary mt-3" style="width:285px">Zepetto World Login</a>
											<span  style="float:right;margin-top:12px"><a href="/member/join">회원가입</a></span>
										</div>
										</c:if>
										<c:if test="${signedUser ne null}">
										<div style="margin-left:15px">
											<span>
												<img alt="사진" src="${pageContext.request.contextPath}/resources/img/eskimo.png" style="width:30px">
											</span>
											<span>
												<span>${signedUserName} 님 환영합니다!</span>
												<div class="btn btn-modern mt-3" style="width:285px">오늘의 명언 - 일체유심조</div>
												<span  style="float:right;margin-top:12px"><a href="/login/logout">Logout</a></span>
											</span>
										</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="container py-2">
					<div class="row">
							
						<div class="col-lg-6">
							<div class="tabs">
								<ul class="nav nav-tabs">
									<li class="nav-item active">
										<a class="nav-link" href="/board/listall?boardType=a" data-toggle="tab">공지사항</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<iframe src="/board/listallPortlet?boardType=a" frameborder="0" scrolling="no" style="width:100%;height:210px"></iframe>
									</div>
								</div>
							</div>
						</div>
					
						<div class="col-lg-6" onclick="javascript:archiPopup();">
							<div class="tabs" >
								<ul class="nav nav-tabs">
									<li class="nav-item active">
										<a class="nav-link" href="/board/listall?boardType=f" data-toggle="tab">자유게시판</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<iframe src="/board/listallPortlet?boardType=f" frameborder="0" scrolling="no" style="width:100%;height:210px" ></iframe>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="container py-2">
					
					<div class="row">
						<div class="col">
						</div>
					</div>
					
					<div class="row">	
					
						<div class="col-lg-6" onclick="javascript:archiPopup();">
							<div class="tabs" >
								<ul class="nav nav-tabs">
									<li class="nav-item active" style="margin-bottom:13px">
										<span><b>Zepetto World System Architecture</b></span>
										<img style="width:10%" src="${pageContext.request.contextPath}/resources/img/icons/icon_arc.png"></img>						
									</li>
								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<img alt="architecture" style="width:100%;height:210px"  src="${pageContext.request.contextPath}/resources/img/architecture.PNG">
									</div>
								</div>
							</div>
						</div>
								
						<div class="col-lg-6">		
							<div class="tabs">
								<ul class="nav nav-tabs">
									<li class="nav-item active">
										<a class="nav-link" href="/board/listall?boardType=q" data-toggle="tab">QnA</a>
									</li>

								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<iframe src="/board/listallPortlet?boardType=q" frameborder="0" scrolling="no" style="width:100%;height:210px"></iframe>
									</div>
								</div>
							</div>						
						</div>
					</div>
					
				</div>
								
				<div class="container py-2">
					
					<div class="row">
						<div class="col">
						</div>
					</div>
					
					<div class="row">	
					
						<div class="col-lg-6" onclick="javascript:archiPopup();">
							<div class="tabs" >
								<ul class="nav nav-tabs">
									<li class="nav-item active" style="margin-bottom:13px">
										<span><b>Zepetto World System Architecture</b></span>
										<img style="width:10%" src="${pageContext.request.contextPath}/resources/img/icons/icon_arc.png"></img>						
									</li>
								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<img alt="architecture" style="width:100%;height:210px"  src="${pageContext.request.contextPath}/resources/img/architecture.PNG">
									</div>
								</div>
							</div>
						</div>
								
						<div class="col-lg-6">		
							<iframe width="100%" height="315" src="https://www.youtube.com/embed/BOE8rR9uDz8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>		
						</div>
					</div>
					
				</div>



			</div>
	<script>

			
		function archiPopup(){
			var option = "height = screen.height , width = screen.width,fullscreen= yes"
			window.open("${pageContext.request.contextPath}/resources/html/architecture.html","구조도",option);
		}
		
		
		
		
	</script>


	</body>
</html>
