<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

	<body>

		<div class="body">
			<div role="main" class="main">

				<section class="page-header page-header-modern page-header-background page-header-background-sm overlay overlay-color-primary overlay-show overlay-op-8 mb-5" style="background-image: url(${pageContext.request.contextPath}/resources/img/page-header/page-header-elements.jpg);">
					<div class="container">
						<div class="row">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1>Board</h1>

							</div>
							<div class="col-md-12 align-self-center order-1">
								<ul class="breadcrumb breadcrumb-light d-block text-center">
									<li><a href="#">Board</a></li>
									<li class="active">Create</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container py-2">

					<div class="row">
						<div class="col-lg-9 order-1 order-lg-2">
							
							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">글 쓰기</strong></h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0">고객님께서 궁금해 하시는 질문에 대하여 작성하여 주십시오.</p>
							</div>

					<form id="createForm" class="contact-form">
								<div class="contact-form-success alert alert-success d-none mt-4" id="contactSuccess">
									<strong>Success!</strong> Your message has been sent to us.
								</div>
							
								<div class="contact-form-error alert alert-danger d-none mt-4" id="contactError">
									<strong>Error!</strong> There was an error sending your message.
									<span class="mail-error-message text-1 d-block" id="mailErrorMessage"></span>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">제목</label>
										<input type="text" maxlength="100" class="form-control" name="title" id="title" required >
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">작성자</label>
										<input type="text" maxlength="100" class="form-control" name="userId" id="userId" value="${signedUser}" readonly="readonly" required>
									</div>
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">게시판 종류</label>
										<select class="form-control" maxlength="100" name="boardType" id="boardType">
											<option value="">게시판 종류</option>
											<c:if test="${signedUser eq 'admin'}">
											<option value="a">공지사항</option>									
											</c:if>
											<option value="q">QnA</option>
											<option value="f">자유게시판</option>
											<!-- <option value="d">자료게시판 - 준비중 </option> -->
										</select>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">내용</label>
										<textarea maxlength="5000" data-msg-required="Please enter your message." rows="8" class="form-control" name="content" id="content" required ></textarea>
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-primary">작성</button>
									<button class="btn btn-info">취소</button>
								</div>
							</form>

						</div>
					</div>

				</div>
			</div>
			</div>
	
	<script>
		var form = $("#createForm");
		var boardType = "${boardType}";

		$(".btn-primary").click(function() {
	
			form.attr("action", "/board/create");
			form.attr("method", "post");
			form.submit();
		});
		
		
		$(".btn-info").click(function() {
			form.attr("action", "/board/listall?boardType="+boardType);
			form.attr("method", "get");
			form.submit();
		});

	</script>

	</body>

</html>