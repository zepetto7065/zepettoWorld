<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String se = (String)session.getAttribute("signedUser");

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
																<a class="dropdown-item" href="/overview">Overview</a>
															</li>
															<li class="dropdown-item">
																<a class="dropdown-item" href="/aboutme/portofolio">Portofolio</a>
															</li>
														</ul>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="#">
															Board
														</a>
														<ul class="dropdown-menu">													
															<li class="dropdown-item">
																<a class="dropdown-item" href="/board/listall?boardType=a">공지사항</a>
															</li>
															<li class="dropdown-item">
																<a class="dropdown-item" href="/board/listall?boardType=q">QnA</a>
															</li>
															<li class="dropdown-item">
																<a class="dropdown-item" href="/board/listall?boardType=f">Free Board</a>
															</li>
															<li class="dropdown-item">
																<a class="dropdown-item" href="/board/listall?boardType=d">Upload Board</a>
															</li>
														</ul>
													</li>
													<li class="dropdown">
														<a class="dropdown-item dropdown-toggle" href="#">
															Contact
														</a>
														<ul class="dropdown-menu">
															<li class="dropdown-item">
																<a class="dropdown-item" href="/faq">FAQ</a>
															</li>
															<li class="dropdown-item">
																<a class="dropdown-item" href="/contactMe">Contact Me</a>
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
										<div>
										<c:if test="${signedUser ne null}">
										| ${signedUser}님 환영합니다.
										</c:if>
										<c:if test="${signedUser eq null}">
										| Please Sign in
										</c:if>
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
					window.open("/popup/ptlOrg","조직도","width=900px,height=500px,scrolling=no,status=no");
				}
				
				</script>
