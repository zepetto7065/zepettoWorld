<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<%
	String se = (String)session.getAttribute("signedUser");
	System.out.println(se);
%>
<!DOCTYPE html>

<html>

	
	<body>
	
		<div class="body">



				<div class="container pb-1">
					
				  <%--   <div id="slidebox">
						<ul id="slider" style="width:70%">
							<li>
								<img src="${pageContext.request.contextPath}/resources/img/banner/banner_01.jpg" />
							</li>
							<li>
								<img src="${pageContext.request.contextPath}/resources/img/banner/banner_02.jpg" />
							</li>
							<li>
								<img src="${pageContext.request.contextPath}/resources/img/banner/banner_03.jpg" />
							</li>
						</ul>
					</div> --%>
						
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
 									개인 포트폴리오 웹사이트입니다.  Zepetto World에 오신걸 환영합니다.! <span class="alternative-font">Welcome to ZepettoWorld!</span>
 								</p>
							</div>
						</div>
						<div class="col-lg-2 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="450">
							<a href="/overview" class="btn btn-modern btn-primary mt-1">Who is zepetto?</a>
						</div>
					</div>
					
				</div>
		
				
<%-- 				<section class="section section-default border-0 my-5 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="750">
					<div class="container py-4">

						<div class="row align-items-center">
							<div class="col-md-6 appear-animation" data-appear-animation="fadeInLeftShorter" data-appear-animation-delay="1000">
								<div class="nav-inside mb-0" data-plugin-options="{'items': 2, 'margin': 10, 'animateOut': 'fadeOut', 'autoplay': true, 'autoplayTimeout': 6000, 'loop': true}">
									<div>
										<img alt="" class="img-fluid" src="${pageContext.request.contextPath}/resources/img/smyoo_room.jpg">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="overflow-hidden mb-2">
									<h2 class="text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="1200">Who <strong class="font-weight-extra-bold">are you?</strong></h2>
								</div>
								<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1400"> 학부 시절 C언어 수업을 통해 프로그래밍에 입문하였습니다.  <a href="javascript:music();">음악</a>을 좋아하고 만드는 것을 좋아합니다. 전공은 전기를 전공했지만 누구보다 코딩과 프로그래밍을 좋아했습니다. 학부 시절부터 Zepetto 라는 별명을 좋아했습니다. </p>
								<p class="mb-0 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1600">시도하지 않으면 의미가 없다는 생각으로 , 모든 것은 마음 먹기에 달려있다는 '일체유심조'의 정신으로 임하는 사람이 되겠습니다. Zepetto World에 오신 것을 환영합니다!</p>
							</div>
						</div>

					</div>
				</section> --%>
				
				<div class="container py-2">

					<div class="row">
						<div class="col">
							<h4>게시판</h4>
						</div>
					</div>
					
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
					
						<div class="col-lg-6">
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
					
						<div class="col-lg-6">
							<div class="tabs" >
								<ul class="nav nav-tabs">
									<li class="nav-item active">
										<a class="nav-link" href="/board/listall?boardType=d" data-toggle="tab">자료게시판</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="popular" class="tab-pane active">
										<iframe src="/board/listallPortlet?boardType=d" frameborder="0" scrolling="no" style="width:100%;height:210px" ></iframe>
									</div>

								</div>
							</div>
						</div>
				</div>
				</div>
				



			</div>
	<script>
	
	
		function music(){
			var option = "width = 800px, height = 600px , top = 200 ,location = no"
			window.open("https://www.youtube.com/watch?v=s93qHMLJiLo&list=RDs93qHMLJiLo&start_radio=1","유상문_음악",option);
		}
	</script>


	</body>
</html>
