<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String kakaoSignedUser = (String)session.getAttribute("kakaoSignedUser");
	String zepettoSignedUser = (String)session.getAttribute("zepettoSignedUser");
	String signedUser = (String)session.getAttribute("signedUser");
	String signedUserName = (String)session.getAttribute("signedUserName");
	if(kakaoSignedUser != null){
		signedUser = kakaoSignedUser;
	}else if(zepettoSignedUser != null){
		signedUser = zepettoSignedUser;
	}
	
	String kakaoName = (String) session.getAttribute("kakaoName");
	
	System.out.println(" kakaoSignedUser ::: "+kakaoSignedUser);
	System.out.println(" zepettoSignedUser ::: "+zepettoSignedUser);
	System.out.println(" signedUser ::: "+signedUser);
	System.out.println(" signedUserName ::: "+signedUserName);
	
	
%>	
	
<jsp:include page="/WEB-INF/views/header.jsp" />


	<header id="header" class="header-effect-shrink" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': true, 'stickyChangeLogo': true, 'stickyStartAt': 30, 'stickyHeaderContainerHeight': 70}">
				<div class="header-body">
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo">
										<a href="/">
											<img alt="Porto" width="200px" height="100px" data-sticky-width="82" data-sticky-height="40" src="${pageContext.request.contextPath}/resources/img/logo.png">
										</a>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end">
								<div class="header-row">
									<div class="header-nav header-nav-line header-nav-top-line header-nav-top-line-with-border order-2 order-lg-1">
										<div class="header-nav-main header-nav-main-square header-nav-main-effect-2 header-nav-main-sub-effect-1">
											<nav class="collapse">
												<ul class="nav nav-pills" id="mainNav">
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="/">
															Home
														</a>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="#">
															About Me
														</a>
														<ul class="dropdown-menu">
															<li class="dropdown-item">
																<li class="dropdown-submenu">
																	<a class="dropdown-item" href="/overview">Overview</a>
																</li>
															</li>
															<li class="dropdown-item">
																															<li class="dropdown-submenu">
															
																<a class="dropdown-item" href="/aboutme/portofolio">Portofolio</a>
																</li>
															</li>
														</ul>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="#">
															Board
														</a>
														<ul class="dropdown-menu">													
															<li class="dropdown-item">
																<li class="dropdown-submenu">
																	<a class="dropdown-item" href="/board/listall?boardType=a">공지사항</a>
																</li>
															</li>
															<li class="dropdown-item">
																<li class="dropdown-submenu">
																<a class="dropdown-item" href="/board/listall?boardType=q">QnA</a>
																</li>
															</li>
															<li class="dropdown-item">
																<li class="dropdown-submenu">
																<a class="dropdown-item" href="/board/listall?boardType=f">Free Board</a>
																</li>
															</li>
															<li class="dropdown-item">
																<li class="dropdown-submenu">
																<a class="dropdown-item" href="/board/listall?boardType=d">Upload Board</a>
																</li>
															</li>
														</ul>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="#">
															Contact
														</a>
														<ul class="dropdown-menu">
															<li class="dropdown-item">
																															<li class="dropdown-submenu">
																										<a class="dropdown-item" href="/faq">FAQ</a>
																										</li>
															</li>
															<li class="dropdown-item">
																															<li class="dropdown-submenu">
															
																<a class="dropdown-item" href="/contactMe">Contact Me</a>
																</li>
															</li>
													 	</ul>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" onclick="javascript:goOrg();">
															org
														</a>
													</li>
													<c:if test="${signedUser eq null}">	
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="/login/login">
															Sign in
														</a>
													</li>	
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="/member/join">
															Sign up
														</a>
													</li>
													</c:if>
													<c:if test="${signedUser ne null}">
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="/login/logout">
															Sign out
														</a>
													</li>
													</c:if>

												</ul>
											</nav>
										</div>
										<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main nav">
											<i class="fas fa-bars"></i>
										</button>
									</div>
									<div class="header-nav-features header-nav-features-no-border header-nav-features-lg-show-border order-1 order-lg-2">
										<div class="header-nav-feature header-nav-features-search d-inline-flex">
											<div>
											<c:if test="${signedUser ne null}">
											${signedUserName}님 환영합니다.
											</c:if>
											<c:if test="${signedUser eq null}">
											Please Sign in  
											</c:if>
											</div>
											<div class="header-nav-features-dropdown" id="headerTopSearchDropdown">
												<form role="search" action="page-search-results.html" method="get">
													<div class="simple-search input-group">
														<input class="form-control text-1" id="headerSearch" name="q" type="search" value="" placeholder="Search...">
														<span class="input-group-append">
															<button class="btn" type="submit">
																<i class="fa fa-search header-nav-top-icon"></i>
															</button>
														</span>
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
			</header>
			<script>
				function goOrg(){
					window.open("/popup/ptlOrg","조직도","width=900px,height=600px,scrolling=no,status=no");
				}
				
				</script>
