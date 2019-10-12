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
<section class="content contatiner-fluid">
	<div class="col-lg-12">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">댓글 작성</h3>
			</div>		
		</div>
		<div class="box-body">
			<div class="form-group">
				<label for="newReplyText">댓글 내용</label>
				<input class="form-control" id="newReplyText" name="replyText" placeholder="댓글 내용을 입력해주세요.">		
			</div>
			
			<div class="form-group">
				<label for="newReplyWriter">댓글 작성자</label>
				<input class="form-control" id="newReplyWriter" name="replyWriter" placeholder="댓글 작성자를 입력해주세요.">		
				<button type="button" class="btn btn-info pull-left" id="replyAddBtn"  style="float:right;margin-top:15px" >저장</button>
			</div>
		</div>
		<div class="box-footer">
			<ul id="replies">
			</ul>
		</div>
		<div class="box-footer">
			<div class="text-center">
				<ul class="pagination">
				</ul>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="modifyModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">댓글 수정창</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="replyNo">댓글 번호</label>
						<input class="form-control" id="replyNo" name="replyNo" readOnly>
					</div>
					<div class="form-group">
						<label for="replyText">댓글 내용</label>
						<input class="form-control" id="replyText" name="replyText" placeholder="댓글 내용을 입력해주세요.">
					</div>
					<div class="form-group">
						<label for="replyWriter">댓글 작성자</label>
						<input class="form-control" id="replyWriter" name="replyWriter" readonly>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success modalModBtn">수정</button>
					<button type="button" class="btn btn-danger modalDelBtn">삭제</button>			
				</div>
			</div>
		</div>
	</div>
	
	
</section>
	<script>
		var replyNo = 2542;
		var replyPageNum = 1;
		
		getRepliesPaging(replyPageNum);
		
		$(".pagenation").on("click","li a",function(event){
			alert("1111")
			event.preventDefault();
			replyPageNum = $(this).attr("href");
			getRepliesPaging(replyPageNum);
		});
		
		//댓글 목록 출력
		function getReplies(){
			$.getJSON("/replies/all/"+replyNo,function(data){
				console.log(data);
			
				var str ="";
				$(data).each(function(){
					
					str += "<li data-replyNo='"+this.replyNo+"' class='replyLi'>"
						+  "<p class='replyText'>"+this.replyText+"</p>"
						+  "<p class='replyWriter'>"+this.replyWriter+"</p>"
						+  "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' data-target='#modifyModal'>댓글 수정</button>"
						+  "</li>"
						+  "<hr/>";
				});
				
				$("#replies").html(str);
			});
			
		}
		
		//댓글 목록 페이징 함수
		function getRepliesPaging(page){
			alert("1111");
			$.getJSON("/replies/" + replyNo + "/" + page , function(data){
				alert("page ::: "+page);

				console.log(data);
				
				var str = "";
				
				$(data.replies).each(function(){
					str += "<li data-replyNo='"+this.replyNo+"' class='replyLi'>"
					+  "<p class='replyText'>"+this.replyText+"</p>"
					+  "<p class='replyWriter'>"+this.replyWriter+"</p>"
					+  "<button type='button' class='btn btn-xs btn-success' data-toggle='modal' data-target='#modifyModal'>댓글 수정</button>"
					+  "</li>"
					+  "<hr/>";
				});
				
				$("#replies").html(str);
				printPageNumbers(data.pageMaker);
			});
		}
		
		function printPageNumbers(pageMaker){
			var str = "";
			//이전
			if(pageMaker.prev){
				str += "<li><a href='"+(pageMaker.startPage-1) +"'>이전</a></li>";
			}
			
			//페이지 
			for(var i = pageMaker.startPage, len = pageMaker.endPage; i<=len;i++){
				var strClass = pageMaker.criteria.page == i ? 'class=active' : '';
				str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
			}
			
			//다음
			if(pageMaker.next){
				str += "<li><a href='"+(pageMaker.endPage-1) +"'>다음</a></li>";
			}
			
			$(".pagination").html(str);
			
		}
		
		//댓글 저장 버튼 클릭 이벤트
		$("#replyAddBtn").on("click", function(){
			
			//화면으로부터 입력 받은 변수값의 처리
			var replyText = $("#newReplyText");
			var replyWriter = $("#newReplyWriter");
			
			var replyTextVal = replyText.val();
			var replyWriterVal = replyWriter.val();
			
			//Ajax 통신 POST
			$.ajax({
				type:"post",
				url:"/replies",
				contentType:"application/json",
				dataType : "text",
				data : JSON.stringify({
					bno : bno,
					replyText : replyTextVal,
					replyWriter : replyWriterVal
				}),
				success : function(result){
					//댓글 성공 처리 알림
					if(result == "regSuccess"){
						alert("댓글 등록되었습니다.")
					}
					getReplies(); // 댓글 출력
					replyText.val("");
					replyWriter.val("");
				}			
			});					
		});
		
		//댓글 수정/삭제 모달창에 데이터 출력
		$("#replies").on("click",".replyLi button",function(){
			var reply = $(this).parent();
			var replyNo = reply.attr("data-replyNo");
			var replyText = reply.find(".replyText").text();
			var replyWriter = reply.find(".replyWriter").text();
			
			$("#replyNo").val(replyNo);
			$("#replyText").val(replyText);
			$("#replyWriter").val(replyWriter);
			
		});
		
		$(".modalDelBtn").on("click", function(){
			//댓글 번호
			var replyNo = $(this).parent().parent().find("#replyNo").val();
			
			//Ajax Delete
			$.ajax({
				type : "delete",
				url : "/replies/"+replyNo,
				contentType:"application/json",
				dataType: "text",
				success:function(result){
					console.log("result : " +result);
					if(result == "delSuccess"){
						alert("삭제가 완료되었습니다.");
						$("#modifyModal").modal("hide");
						getReplies();
					}
				}
			});
			
		});
		
		$(".modalModBtn").on("click", function(){
			
			//댓글 선택자
			var reply = $(this).parent().parent();
			//댓글 번호
			var replyNo = reply.find("#replyNo").val();
			//수정한 댓글 내용
			var replyText = reply.find("#replyText").val();
			
			//AJAX PUT
			$.ajax({
				type : "put",
				url : "/replies/"+replyNo,
				contentType:"application/json",
				data : JSON.stringify({
					replyText:replyText
				}),
				dataType : "text",
				success : function(result){
					console.log("result : " + result);
					if(result == "modSuccess"){
						alert("수정이 완료되었습니다.");
						$("#modifyModal").modal("hide");
						getReplies();
					}
				}
			});
		});
	</script>

</body>
</html>