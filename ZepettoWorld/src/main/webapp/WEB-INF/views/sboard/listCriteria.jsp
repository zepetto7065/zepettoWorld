<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
		<h1>자유게시판</h1>
		<br>
			<div class="row">

				<div class="col-xs-9 input-group">
					 <span id="sspan" class="input-group-addon"> 
					 <select id="ssel" name="searchType">
							<option disabled="disabled">검색기준</option>
							<option value="userName">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
					</select>
					</span> <input name="keyword" id="keyword" class="form-control"> <span
						class="input-gruop-addon"
						style="position: absolute; float: right;">
						<button class="btn btn-success" id="searchBtn">검색</button>
					</span>

				</div>
			</div>
			<br>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${list}" var="board">
						<tr>
							<td>${board.bno}</td>
							<td><a
								href="/sboard/read?bno=${board.bno}&page=${pm.cri.page}&perPage=${pm.cri.perPage}&searchType=${pm.cri.searchType}&keyword=${pm.cri.keyword}">${board.title}</a></td>
							<td>${board.userName}/${board.ssoId}</td>
							<td>${board.regdate}</td>
							<td>${board.viewcnt}</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="float:right;">
			<a href="/sboard/create" class="btn btn-info">글쓰기</a>
		</div>
		<div class="row text-center">
			<ul class="pagination">

				<c:if test="${pm.cri.page>1}">
					<li><a
						href="/sboard/listCriteria?page=${pm.cri.page-1}&perPage=${pm.cri.perPage}">&laquo;</a></li>
				</c:if>


				<c:forEach var="idx" begin="${pm.startPageNum}"
					end="${pm.endPageNum}">
					<li class="${idx==pm.cri.page?'active':''}"><a
						href="/sboard/listCriteria?page=${idx}&perPage=${pm.cri.perPage}">${idx}<br></a>
					</li>
				</c:forEach>

				<c:if test="${pm.cri.page<pm.totalPage}">
					<li><a
						href="/sboard/listCriteria?page=${pm.cri.page+1}&perPage=${pm.cri.perPage}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>


	</div>

	<script type="text/javascript">
		var result='${msg}';
		if(result=="INSERT_SUCCESS"){
			alert("입력 성공");
		}else if(result=="UPDATE_SUCCESS"){
			alert("수정 성공");
		}else if(result=="DELETE_SUCCESS"){
			alert("삭제 성공");
		}
		
		$("#searchBtn").click(function(){
			var st=$("#ssel option:selected").val();
			var kw=$("#keyword").val();
			var uri="/sboard/listCriteria?page=1&perPage=10&searchType="+st+"&keyword="+kw;
		 	location=encodeURI(uri); 
			
		});
	</script>
	
	
	
	
	
	
</body>
</html>