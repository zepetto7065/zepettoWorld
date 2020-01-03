<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<jsp:include page="../header.jsp" />
	</head>
	<body>

		<div role="main" class="main">
	
			<div class="container">
	
				<div class="row">
					<div class="col">
	
						<div class="featured-boxes">
							<div class="row">
								<div class="col-md-6">
									<div class="featured-box featured-box-primary text-left mt-5">
										<div class="box-content">
											<form action="/login/loginPost" name="loginInfo" method="post"
												class="needs-validation">
												<div class="form-row">
													<div class="form-group col">
														<input type="text" name="userId" id="userId"
															class="form-control form-control-lg" required
															placeholder="아이디">
													</div>
												</div>
												<div class="form-row">
													<div class="form-group col">
														<a class="float-right" href="#">비밀번호 찾기</a> <input
															type="password" name="passWord" id="passWord"
															class="form-control form-control-lg" required
															placeholder="비밀번호">
													</div>
												</div>
												<div class="form-row">
													<div class="form-group col-lg-6">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="rememberme"> <label
																class="custom-control-label text-2" for="rememberme">아이디
																기억하기</label>
														</div>
													</div>
													<div class="form-group col-lg-6">
														<input type="button" value="로그인" onclick="javascript:loginCheck()"
															class="btn btn-primary btn-modern float-right"
															data-loading-text="Loading...">
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
	
							</div>
	
							<!-- 카카오 로그인 창으로 이동 -->
							<div>
								<a href="${kakaoAuthUrl}"> <img
									src="${pageContext.request.contextPath}/resources/img/login/kakao_account_login_btn_medium_narrow.png">
								</a>
							</div>
							<br>
							<!-- 네이버 로그인 창으로 이동 -->
							<div id="naver_id_login">
								<a href="${naverAuthUrl}"> <img width="223"
									src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" />
								</a>
							</div>
	
						</div>
					</div>
				</div>
	
			</div>
	
	
		</div>

		<script>
			// 아이디 저장하기 시작
			
			$(document).ready(function(){
			    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
			    var userInputId = getCookie("userInputId");
			    $("input[name='userId']").val(userInputId); 
			     
			    if($("input[name='userId']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
			        $("#rememberme").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
			    }
			     
			    $("#rememberme").change(function(){ // 체크박스에 변화가 있다면,
			        if($("#rememberme").is(":checked")){ // ID 저장하기 체크했을 때,
			            var userInputId = $("input[name='userId']").val();
			            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			        }else{ // ID 저장하기 체크 해제 시,
			            deleteCookie("userInputId");
			        }
			    });
			     
			    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
			    $("input[name='userId']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
			        if($("#rememberme").is(":checked")){ // ID 저장하기를 체크한 상태라면,
			            var userInputId = $("input[name='userId']").val();
			            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			        }
			    });
			});
			 
			function setCookie(cookieName, value, exdays){
			    var exdate = new Date();
			    exdate.setDate(exdate.getDate() + exdays);
			    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
			    document.cookie = cookieName + "=" + cookieValue;
			}
			 
			function deleteCookie(cookieName){
			    var expireDate = new Date();
			    expireDate.setDate(expireDate.getDate() - 1);
			    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
			}
			 
			function getCookie(cookieName) {
			    cookieName = cookieName + '=';
			    var cookieData = document.cookie;
			    var start = cookieData.indexOf(cookieName);
			    var cookieValue = '';
			    if(start != -1){
			        start += cookieName.length;
			        var end = cookieData.indexOf(';', start);
			        if(end == -1)end = cookieData.length;
			        cookieValue = cookieData.substring(start, end);
			    }
			    return unescape(cookieValue);
			}
			
			// 아이디 저장하기 끝

			
		 	//아이디, PW 유효성 체크
			function loginCheck(){
				
				var form = document.loginInfo;
				var userId = $('input[name=userId]').val();
				var passWord = $('input[name=passWord]').val();
				
				
	            $.ajax({
	            	  url:'/member/checkUser',
	            	  type: "POST",
	            	  data: {
	            		  "userId":userId,
	            		  "passWord":passWord
	            	  },
	            	  success: function(data) {
						  if(data == 0){
							  alert("해당 아이디가 존재하지 않습니다.");
							  return;
						  }else if(data == 1){
							  alert("비밀번호가 정확하지 않습니다.");
						  	  return;
						  }else if(data == 2){
							  alert("로그인 성공");
							  form.submit();	  
						  }
						  
	            	  }
	            	}); 
			}	
		 	
		</script>
	</body>	
</html>