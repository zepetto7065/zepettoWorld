<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="../header.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="hidden" name="bno" value="${vo.bno}">
		<input type="hidden" name="page" value="${cri.page}">
		<input type="hidden" name="perPage" value="${cri.perPage}">

		<input type="hidden" name="searchType" value="${cri.searchType}">
		<input type="hidden" name="keyword" value="${cri.keyword}">
	</form>

	<div class="container">
		<div class="row">
			<div class="form-group">
				<label for="title">제목</label>
				<input readonly="readonly" class="form-control" name="title" value="${vo.title}" id="title">
			</div>
			<div class="form-group">
				<label for="userName">작성자</label>
				<input readonly="readonly" class="form-control" name="userName" value="${vo.userName}" id="userName">
			</div>		
			<div class="form-group">
				<label for="content">내용</label>
				<textarea readonly="readonly" class="form-control" name="content" id="content">${vo.content}</textarea>
			</div>
			<div class="form-group">
				<button class="btn btn-warning">수정</button>
				<button class="btn btn-danger">삭제</button>
				<button class="btn btn-info">검색 목록</button>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var $form = $("form");
			$(".btn-warning").click(function(){
				$form.attr("action", "/sboard/update");
				$form.attr("method", "get");
				$form.submit();
			});
			
			$(".btn-danger").click(function(){
				$form.attr("action", "/sboard/delete");
				$form.attr("method", "post");
				$form.submit();
			});
			
			$(".btn-info").on("click", function(){ //이벤트(방아쇠 당김)와 핸들러(총알 나감)를 구분
				$form.attr("method", "get");
				$form.attr("action", "/sboard/listCriteria");
				$form.submit();
			});
			
		});
	
	</script>
	
	
	
	
</body>
</html>