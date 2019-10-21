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

				<section class="page-header page-header-modern page-header-background page-header-background-sm overlay overlay-color-primary overlay-show overlay-op-8 mb-5" ">
					<div class="container">
						<div class="row">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1>Board</h1>

							</div>
							<div class="col-md-12 align-self-center order-1">
								<ul class="breadcrumb breadcrumb-light d-block text-center">
									<li><a href="#">Board</a></li>
									<li class="active">Read</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container py-2">

					<div class="row">
						<div class="col-lg-9 order-1 order-lg-2">
							
							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">자유게시판</strong></h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0">고객님께서 궁금해 하시는 질문에 대한 답변을 모아놓았습니다.</p>
							</div>

							<form id="readForm" class="contact-form" method="post" >
								<input type="hidden" name="bno" value="${vo.bno}">
								<input type="hidden" name="searchType" value="${searchCriteria.searchType}">
								<input type="hidden" name="keyword" value="${searchCriteria.keyword}">
								<input type="hidden" name="page" value="${searchCriteria.page}">
								<input type="hidden" name="perPageNum" value="${searchCriteria.perPageNum}">	
					
					
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
										<input type="text" value="${vo.regDate}" maxlength="100" class="form-control" name="subject" id="subject" readonly="readonly" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">내용</label>
										<textarea maxlength="5000" data-msg-required="Please enter your message." rows="8" class="form-control" name="content" id="content" required readonly="readonly">${vo.content}</textarea>
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-info" type="submit">목록</button>
									<button class="btn btn-primary" type="submit">수정</button>
									<button class="btn btn-warning" type="submit">삭제</button>
								</div>
					
							</form>

						</div>
					</div>
				
					<!-- 댓글 영역 -->
					
					<div>
						<div class="box box-warning">
							<div class="box-header with-border">
								<a class="link-black text-lg"><i class="fa fa-pencil"></i>댓글작성</a>
							</div>
						</div>
						<div class="box-body">
							<form class="form-horizontal">
								<div class="form-group margin">
									<div class="col-sm-10">
										<textarea class="form-control" id="newReplyText" rows="3" placeholder="댓글 내용을  입력하세요" style="resize:none"></textarea>
									</div>
									<div>
									<div class="col-sm-2" style="display:inline-block">
										<input class="form-control" id="newReplyWriter" type="text" placeholder="댓글작성자">
									</div>
									<div class="col-sm-2" style="display:inline-block">
										<button type="button" class="btn btn-secondary btn-block replyAddBtn"><i class="fa fa-save"></i> 저장</button>
									</div>
									</div>
									<hr/>

								</div>
							</form>
						</div>		
					</div>
					
					<div class="row">
						<!-- 댓글 목록/ 댓글 페이징 -->
						<div class="box box-success collapsed-box">
							<div class="box-header with-border">
								<a href="" class="link-black text-lg"><i class="fa fa-comments-o marging-r-5 replyCount"></i></a>
								<div class="box-tools">
									<button type="button" class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
							
							<!-- 댓글 목록 -->
							<div class="box-body repliesDiv">
							
							</div>
							
							<!-- 댓글 페이징 -->
							<div class="box-footer">
								<div class="text-center">
									<ul class="pagination pagination-sm no-margin">
									
									</ul>
								</div>
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>

		<!-- 댓글 수정 modal -->
		<div class="modal fade" id="modModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">댓글수정</h4>
					</div>
					<div class="modal-body" data-rno>
						<div class="form-group">
							<input type="hidden" class="replyNo" >
							<textarea class="form-control" id="replyText" rows="3" style="resize:none"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-success modalModBtn">수정</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 댓글 삭제 modal -->
		<div class="modal fade" id="delModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">댓글삭제</h4>
					</div>
					<div class="modal-body" data-rno>
						<p>댓글을 삭제하시겠습니까?</p>
						<input type="hidden" class="rno">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default pull-left" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-success modalDelBtn">삭제</button>
					</div>
				</div>
			</div>
		</div>
		
		
			
	<script type="text/javascript">

		
		$(document).ready(function() {
			var boardType = "${vo.boardType}";
			var articleNo = "${vo.bno}"; //현재 게시글 번호
			var replyPageNum = 1; //댓글 페이지 초기화
			
			//댓글 내용 : 줄바꿈/공백처리
			Handlebars.registerHelper("escape",function(replyText){
				var text = Handlebars.Utils.escapeExpression(replyText);
				text = text.replace(/(\r\n|\n|\r)/gm,"<br/>");
				text = text.replace(/( )/gm,"&nbsp;");
				return new Handlebars.SafeString(text);
			});
			
			//댓글 등록일자 : 날짜/시간 2자리로
			Handlebars.registerHelper("prettifyDate",function(timeValue){
				var dateObj = new Date(timeValue);
				var year = dateObj.getFullYear();
				var month = dateObj.getMonth();
				var date = dateObj.getDate();
				var hours = dateObj.getHours();
				var minutes = dateObj.getMinutes();

				//2자리 수로 변환
				month < 10 ? month = '0' + month : month;
				date < 10 ? date = '0' + date : date;
				hours < 10 ? hours = '0' + hours : hours;
				minutes < 10 ? minutes = '0' + minutes : minutes;
				return year + "-" + month + "-" + date + " " + hours + ":" + minutes;
			});
			
			//댓글 목록
			getReplies("/replies/"+articleNo+"/"+replyPageNum);

			
			//댓글 목록 출력
			function getReplies(repliesUri){
				$.getJSON(repliesUri,function(data){
					printReplyCount(data.pageMaker.totalCount);
					printReplies(data.replies, $(".repliesDiv"), $("#replyTemplate"));
					printReplyPaging(data.pageMaker, $(".pagination"));
				});		
			}
			
			//댓글 갯수 출력 함수
			function printReplyCount(totalCount){
				var replyCount = $(".replyCount");
				var collapsedBox = $(".collapsed-box");
				
				if(totalCount==0){
					replyCount.html("조회된 댓글이 없습니다.");
					collapsedBox.find(".btn-box-tool").remove();
					return;
				}
				
				replyCount.html("댓글 목록 ("+totalCount+")");
				collapsedBox.find(".box-tools").html(
					"<button type='button' class='btn btn-box-tool' data-widget='collapse'>"
					+ "<i class='fa fa-plus'></i>"
					+ "</button>"
				);
				
			}
			
			//댓글 목록 출력
			function printReplies(replyArr, targetArea, templateObj){
				var replyTemplate = Handlebars.compile(templateObj.html());
				var html = replyTemplate(replyArr);
				$(".replyDiv").remove();
				targetArea.html(html);
			}
			
			function printReplyPaging(pageMaker, targetArea){
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
					str += "<li><a href='"+(pageMaker.endPage+1) +"'>다음</a></li>";
				}
				
				targetArea.html(str);
				
			}
			
			
			$(".pagination").on("click","li a",function(event){
				event.preventDefault();
				replyPageNum = $(this).attr("href");
				getReplies("/replies/"+articleNo+"/"+replyPageNum);
			});
			
			//댓글 저장 버튼 클릭 이벤트
			$(".replyAddBtn").on("click", function(){
				//화면으로부터 입력 받은 변수값의 처리
				var replyTextObj = $("#newReplyText");
				var replyWriterObj = $("#newReplyWriter");
				
				var replyText = replyTextObj.val();
				var replyWriter = replyWriterObj.val();
				
				//Ajax 통신 POST
				$.ajax({
					type:"post",
					url:"/replies/",
					contentType: "application/json",
					dataType : "text",
					data : JSON.stringify({
						bno : articleNo,
						replyText : replyText,
						replyWriter : replyWriter
					}),
					success : function(result){
						console.log("result ::  "+result);
						//댓글 성공 처리 알림
						if(result == "regSuccess"){
							alert("댓글 등록되었습니다.")
							replyPageNum=1;//페이지 초기화
							getReplies("/replies/"+articleNo+"/"+replyPageNum); // 댓글 출력
							replyTextObj.val("");
							replyWriterObj.val("");
						}
						
					}			
				});					
			});
			

	        // modal 창의 댓글 수정버튼 클릭시
	        $(".modalModBtn").on("click", function () {
	        	
	            var rno = $(".replyNo").val();
	            var replytext = $("#replytext").val();
	            $.ajax({
	                type: "put",
	                url: "/replies/" + rno,
	                headers:{
						"contentType" : "application/json",
		                "X-HTTP-Method-Override" : "PUT"
	                },
				    dataType: "text",
	                data: JSON.stringify({
	                    replytext:replytext
	                }),
	                success: function (result) {
	                    console.log("result : " + result);
	                    if (result == "modSuccess") {
	                        alert("댓글이 수정되었습니다.");
	                        getPage("/replies/" + articleNo + "/" + replyPage);
	                        $('#modModal').modal("hide");
	                    }
	                }
	            })
	        });
	        

	        $(".modalDelBtn").on("click", function () {
	            var rno =  $(".replyNo").val();
	            var replytext = $("#replytext").val();
	            if(confirm("댓글을 삭제하시겠습니까?")) {
	                $.ajax({
	                    type: "delete",
	                    url: "/replies/" + rno,
	                    headers:{
							"contentType" : "application/json",
			                "X-HTTP-Method-Override" : "DELETE"
		                },	                    
		                dataType: "text",
	                    success: function (result) {
	                        console.log("result : " + result);
	                        if (result == "delSuccess") {
	                            alert("댓글이 삭제되었습니다.");
	                            getPage("/replies/" + articleNo + "/" + replyPage);
	                            $('#delModal').modal("hide");
	                        }
	                    }
	                });
	            }
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
	        
	
			var $form = $("#readForm");

			$(".btn-primary").click(function() {
				$form.attr("action", "/board/update");
				$form.attr("method", "get");
				$form.submit();
			});

			$(".btn-warning").click(function() {
				$form.attr("action", "/board/delete");
				$form.attr("method", "post");
				$form.submit();
			});

			$(".btn-info").on("click", function() {
				$form.attr("method", "get");
				$form.attr("action", "/board/listall?boardType="+boardType);
				$form.submit();
			});

			//getAllList(page); /* 댓글 무조건 실행 */
		})

	</script>
	<script id="replyTemplate" type="text/x-handlebars-template">
		{{#each.}}
	    <div class="post replyDiv" data-rno={{replyNo}}>
        <div class="user-block">
            <img class="img-circle img-bordered-sm" style="width:10%" src="${pageContext.request.contextPath}/resources/img/noImageMan.jpeg" alt="user image">
            <span class="username">
                <a style="font-weight:bold;">{{replyWriter}}</a>
			<span style="float:right;">
                <a href="#" class="pull-right btn-box-tool replyDelBtn" data-toggle="modal" data-target="#delModal">
                    <i class="fa fa-times"> 삭제</i>
                </a>
                <a href="#" class="pull-right btn-box-tool replyModBtn" data-toggle="modal" data-target="#modModal">
                    <i class="fa fa-edit"> 수정</i>
                </a>
			</span>
            </span>
            <span class="description" >&nbsp;&nbsp;{{prettifyDate regDate}}</span>
        </div>
        <div class="oldReplytext">{{escape replyText}}</div>
        <br/>
		</div>
		{{/each}}
	</script>
	

</body>
</html>