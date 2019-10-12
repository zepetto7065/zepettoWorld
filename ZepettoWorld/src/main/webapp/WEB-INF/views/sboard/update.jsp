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
	<div class="container">
		<div class="row">
			<form class="form-horizontal" method="post">
				<input type="hidden" name="page" value="${cri.page}">
				<input type="hidden" name="perPage" value="${cri.perPage}">
				
				<input type="hidden" name="searchType" value="${cri.searchType}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
			
				<div class="form-group">
					<label class="col-xs-2" for="bno">글번호</label>
					<div class="col-xs-10">
						<input readonly="readonly" class="form-control" name="bno" id="bno" value="${vo.bno}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2" for="userName">작성자</label>
					<div class="col-xs-10">
						<input class="form-control" name="userName" id="userName" value="${vo.userName}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2" for="title">제목</label>
					<div class="col-xs-10">
						<input class="form-control" name="title" id="title" value="${vo.title}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2" for="content">내용</label>
					<div class="col-xs-10">
						<textarea rows="3" class="form-control" name="content" id="content">${vo.content}</textarea>
					</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-xs-offset-2 col-xs-10">
					<button class="btn btn-primary">수정</button>
					<button class="btn btn-warning">취소</button>
				</div> 
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$(".btn-primary").on("click", function(){
				$("form").attr("action", "update");
				$("form").attr("method", "post");
				$("form").submit();
			});
			$(".btn-warning").on("click", function(){
				self.location="/sboard/listCriteria?page=${cri.page}&perPage=${cri.perPage}&searchType=${cri.searchType}&keyword=${cri.keyword}";
			});
			
		});
	
	</script>
		<script type="text/javascript">
		var result='${msg}';
		if(result=="UPDATE_SUCCESS"){
			alert("수정 성공");
		}
		
	</script>
	
	
</body>
</html>