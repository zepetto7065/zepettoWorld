<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<!DOCTYPE html>
<html>

	<body>


		<div class="body">
			<div role="main" class="main">


				<div class="container py-2">

					<div class="row">
						<div class="col-lg-9 order-1 order-lg-2">
							
							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">자유게시판</strong></h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0">고객님께서 궁금해 하시는 질문에 대한 답변을 모아놓았습니다.</p>
							</div>

							<form id="readForm" class="contact-form" action="" method="">
										<input type="hidden" name="bno" value="${vo.bno}">
							
							
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
										<input type="text" value="${vo.title}" maxlength="100" class="form-control" name="name" id="name" required readonly="readonly">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">작성자</label>
										<input type="text" value="${vo.ssoId}" data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="ssoId" id="ssoId" readonly="readonly" required>
									</div>
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">작성일자</label>
										<input type="text" value="${vo.regdate}" maxlength="100" class="form-control" name="subject" id="subject" readonly="readonly" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">내용</label>
										<textarea maxlength="5000" data-msg-required="Please enter your message." rows="8" class="form-control" name="content" id="content" required readonly="readonly">${vo.content}</textarea>
									</div>
								</div>
							
							</form>

						</div>
					</div>

				</div>
			</div>
		</div>

	<script type="text/javascript">


	</script>
</body>
</html>