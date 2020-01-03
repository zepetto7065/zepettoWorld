<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/views/header_org.jsp" />
<style>
	html,body{
		height:100%
	}
	.org_dept{
		display:inline-block;
		height:100%;
		border: 2px ridge #000000;
		width : 25%;
		float:left;
	}
	.org_dept_list{
		display:inline-block;
		height:100%;
		border: 2px ridge #000000;
		width : 25%
	}
	.org_dept_user{
		display:inline-block;
		height:100%;
		border: 2px ridge #000000;
		width : 49%;
		float:right;
	}
	.org_area{
		height:90%;
	}
	.org_headline{
	font-style: oblique;
    font-size: 20px;
    padding: 10px;
    }
</style>

</head>
<body>
	
	<div class="org_headline">조직도</div>
	
	<div  class="org_area">

		<div class="org_dept">
			<div id="orgList">

			</div>
		</div>
		
		<div class="org_dept_list">
			<div id="userList">
			
									<div id="userSelectList" style="padding-left:2px">
								
									</div>
			</div>
		</div>
		
		<div class="org_dept_user">
			<div class="container py-2">
					<div class="row">
						<div>
							<img style="width:40%;padding-left:3px" src="${pageContext.request.contextPath}/resources/img/noImageMan.jpeg">
						</div>
						<div class="col-lg-9" id="userDetailList">

							

							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">이름</label>
							        <div class="col-lg-9">
							            <input class="form-control" required type="text" value="John" readonly>
							        </div>
							    </div>
									<div class="form-group row">
											<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">부서</label>
											<div class="col-lg-9">
													<input class="form-control" type="text" value="" readonly>
											</div>
									</div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 ">Email</label>
							        <div class="col-lg-9">
							            <input class="form-control" required type="email" value="email@gmail.com" readonly>
							        </div>
							    </div>

							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">주소</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="url" value="" readonly>
							        </div>
							    </div>

								<div class="form-group row">
										<label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">전화번호</label>
										<div class="col-lg-9">
												<input class="form-control" type="url" value="" readonly>
										</div>
								</div>


						</div>
					</div>

			</div>		
		</div>
	</div>
	
	<script>
		$(function() {
			getOrgList();
		});
		
		function getOrgList(){
			var jsonData;

			$.ajax({
				type : "GET",
				url : "/popup/orgList",
				async : false,
				dataType : "json",
				success : function(data) {
					jsonData = data;
					if (data.length == 0) {

						alert("결과가 없습니다.");
					}
				},
				error : function() {
					alert("data 통신 실패");
				}
			});

			console.log(jsonData);

			$('#orgList').jstree(
					{
						'core' : {
							'data' : jsonData //jsonArray 데이터 출력
						},
						'plugins' : [ "themes", "json_data", "ui", "sort",
								"types", "crrm", "cookies", "search" ]

					}).bind("select_node.jstree", function(evt, data) {
				console.log("nodeId : " + data.node.id); //노드가 선택된 뒤 처리 이벤트
				var nodeId = data.node.id;
				$("#userSelectList").empty(); // 남아있던 조직 사용자 list 초기화
				getOrgUserList(nodeId); // 선택된 nodeId에 따라 조직 사용자 리스트 출력

				
			});
		}
		


		function getOrgUserList(nodeId){
			$.ajax({
				type : "GET",
				url : "/popup/orgUserList",
				async : false,
				data : {"nodeId" : nodeId},
				success : function(data) {
					if(data == "" || data == null){
						$("#userSelectList").html("데이터 없음");
					}else{

						for(var i in data){
							var id = data[i];
							$("#userSelectList").append("<li>"+"<a href='javascript:getOrgUserDetail("+"\""+id+"\""+")'>"+id+"</a>"+"</li>"); //클릭시 상세 데이터 호출

						}
						
					}		
				},
				error : function() {
					alert("orgUserList data 통신 실패");
				}
			});
		}
		
		function getOrgUserDetail(data){
			$("#userDetailList").empty(); // 남아있던 조직 사용자 list 초기화

			$.ajax({
				type : "GET",
				url : "/popup/orgUserDetail",
				async : false,
				data : {"userName" : data},
				success : function(data) {
					if(data == "" || data == null){
						$("#userSelectDetail").html("데이터 없음");
					}else{

						for(var i in data){
							$("#userDetailList").append(
									"<div class='form-group row'>"+
									 "<label class='col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2'>이름</label>"+
									 "<div class='col-lg-9'>"+
									 "<input class='form-control' required type='text' value="+"\'"+data[i].userName+"\'"+"readonly>"+"</div>"+
									 "</div>"
									 +
									"<div class='form-group row'>"+
									 "<label class='col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2'>부서</label>"+
									 "<div class='col-lg-9'>"+
									 "<input class='form-control' required type='text' value="+"\'"+data[i].orgName+"\'"+"readonly>"+"</div>"+
									 "</div>"
									+
									"<div class='form-group row'>"+
									 "<label class='col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2'>Email</label>"+
									 "<div class='col-lg-9'>"+
									 "<input class='form-control' required type='text' value="+"\'"+data[i].userEmail+"\'"+"readonly>"+"</div>"+
									 "</div>"
									+ 
									"<div class='form-group row'>"+
									 "<label class='col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2'>주소</label>"+
									 "<div class='col-lg-9'>"+
									 "<input class='form-control' required type='text' value="+"\'"+data[i].userAddress+"\'"+"readonly>"+"</div>"+
									 "</div>"
									+		 
									"<div class='form-group row'>"+
									 "<label class='col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2'>전화번호</label>"+
									 "<div class='col-lg-9'>"+
									 "<input class='form-control' required type='text' value="+"\'"+data[i].phoneNum+"\'"+"readonly>"+"</div>"+
									 "</div>"							 
							
							);
						}
						
					}		
				},
				error : function() {
					alert("orgUserList data 통신 실패");
				}
			});
		}


	</script>
	
</body>
</html>