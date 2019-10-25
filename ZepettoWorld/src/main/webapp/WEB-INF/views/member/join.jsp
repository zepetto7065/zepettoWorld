
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../header.jsp"></jsp:include>

</head>

<body>
	 <script type="text/javascript">
			// 회원가입 화면의 입력값들을 검사한다.
			function checkValue() {
	
				var form = document.userInfo;
	
				if (!form.userId.value) {
					alert("아이디를 입력하세요.");
					return false;
				}
	
				if (form.idDuplication.value != "idCheck") {
					alert("아이디 중복체크를 해주세요.");
					return false;
				}
	
				if (!form.passWord.value) {
					alert("비밀번호를 입력하세요.");
					return false;
				}
	
				// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
				if (form.passWord.value != form.passWordCheck.value) {
					alert("비밀번호를 동일하게 입력하세요.");
					return false;
				}
	
				if (!form.userName.value) {
					alert("이름을 입력하세요.");
					return false;
				}
	
				if (!form.birthDay.value) {
					alert("생년월일을 입력하세요.");
					return false;
				}
				
				if (!form.stateSi.value || !form.stateGu.value || !form.stateDong.value || !form.stateDetail.value) {
					alert("주소를 입력하세요.");
					return false;
				}

				if (!form.userEmail.value) {
					alert("메일 주소를 입력하세요.");
					return false;
				}
	
/* 				if (form.emailDuplication.value != "emailCheck") {
					alert("이메일 중복체크를 해주세요.");
					return false;
				} */
				
				if (!form.phoneNum.value) {
					alert("전화번호를 입력하세요.");
					return false;
				}
				
				if (isNaN(form.birthDay.value)) {
					alert("생년월일을 6자리로 입력하세요. (ex) 1992년 4월 17일 -> 920417");
					return false;
				} 
	
				if (isNaN(form.phoneNum.value)) {
					alert("전화번호는 - 제외한 숫자만 입력해주세요.");
					return false;
				} 
	
				// 비밀번호 유효성 체크
	
				// 비밀번호(패스워드) 유효성 체크 (문자, 숫자, 특수문자의 조합으로 6~16자리)
				var ObjUserPassword = document.userInfo.passWord;
	
				//if(ObjUserPassword.value != objUserPasswordRe.value)
				//{
				//  alert("입력하신 비밀번호와 비밀번호확인이 일치하지 않습니다");
				//  return false;
				//}
	
				if (ObjUserPassword.value.length < 6) {
					alert("비밀번호는 영문,숫자,특수문자(!@$%^&* 만 허용)를 사용하여 6~16자까지, 영문은 대소문자를 구분합니다.");
					return false;
				}
	
				if (!ObjUserPassword.value
						.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
					alert("비밀번호는 영문,숫자,특수문자(!@$%^&* 만 허용)를 사용하여 6~16자까지, 영문은 대소문자를 구분합니다.");
					return false;
				}
	
				//if(ObjUserID.value.indexOf(ObjUserPassword) > -1) {
				//  alert("비밀번호에 아이디를 사용할 수 없습니다.");
				//  return false;
				//}
	
				var SamePass_0 = 0; //동일문자 카운트
				var SamePass_1 = 0; //연속성(+) 카운드
				var SamePass_2 = 0; //연속성(-) 카운드
	
				for (var i = 0; i < ObjUserPassword.value.length; i++) {
					var chr_pass_0 = ObjUserPassword.value.charAt(i);
					var chr_pass_1 = ObjUserPassword.value.charAt(i + 1);
	
					//동일문자 카운트
					if (chr_pass_0 == chr_pass_1) {
						SamePass_0 = SamePass_0 + 1
					}
	
					var chr_pass_2 = ObjUserPassword.value.charAt(i + 2);
	
					//연속성(+) 카운드
					if (chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == 1
							&& chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == 1) {
						SamePass_1 = SamePass_1 + 1
					}
	
					//연속성(-) 카운드
					if (chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == -1
							&& chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == -1) {
						SamePass_2 = SamePass_2 + 1
					}
				}
				if (SamePass_0 > 1) {
					alert("동일문자를 3번 이상 사용할 수 없습니다.");
					return false;
				}
	
				if (SamePass_1 > 1 || SamePass_2 > 1) {
					alert("연속된 문자열(123 또는 321, abc, cba 등)을\n 3자 이상 사용 할 수 없습니다.");
					return false;
				}
				
				alert("회원 가입이 완료되었습니다.");
			}
	
			// 취소 버튼 클릭시 첫화면으로 이동
			function goFirstForm() {
				location.href = "MainForm.do";
			}
	
			// 아이디 중복체크 화면open
			function openIdChk() {
	
				window.name = "parentForm";
				var userId = $("input[name=userId]").val();
				window.open("/idCheckForm?userId=" + userId, "chkForm",
						"width=500, height=300, resizable = no, scrollbars = no");
			}
	
			// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
			// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
			// 다시 중복체크를 하도록 한다.
			function inputIdChk() {
				document.userInfo.idDuplication.value = "idUncheck";
			}
			
			function passwordCheck(){
				var password = document.userInfo.passWord.value;
				var passWordCheck = document.userInfo.passWordCheck.value;
				
				if(password==passWordCheck ){
					document.getElementById("checkPWMsg").innerHTML = "비밀번호가 일치합니다."
				} else{
					document.getElementById("checkPWMsg").innerHTML = "비밀번호가 불일치합니다."
				}
			}
	
	</script>   
<!-- 	<div class="container">
		<div class="row" style="margin:auto;width:300px;">
				<form onsubmit="return checkValue()" action="/member/join" method="post" name="userInfo">
					<div class="form-group">
				
						<label for="userId">아이디</label>
						<div style="display:flex">
						<input type="text" maxlength="50" required="required" class="form-control" name="userId" id="userId"
							onkeydown="inputIdChk()"> 
							<input type="button" class="btn btn-info" value="중복확인" onclick="openIdChk()">
							<input type="hidden" name="idDuplication" value="idUncheck">
						</div>
					</div>
					
					<div class="form-group">
						<label for="passWord">비밀번호</label>
						<input name="title" id="title">
						<input type="password" required="required" class="form-control"
							name="passWord" id="passWord" onkeyup="passwordCheck()">
					</div>

					<div class="form-group">
						<label for="passWordCheck">비밀번호 재확인</label>
						<input name="title" id="title">
						<input type="password" required="required" class="form-control"
							name="passWordCheck" id="passWordCheck" onkeyup="passwordCheck()">
					</div>
					<div id="checkPWMsg">
					</div>
					<br>
					<div class="form-group">
						<label for="userName">이름</label>
						<input name="title" id="title">
						<input required="required" class="form-control" name="userName"
							id="userName">
					</div>
					<div class="form-group" id="birthRap">
						<label for="birthDate">생년월일</label>
						<input name="userName" id="userName">
						<div>
							<span> <input required="required" class="form-control"
								name="birthYear" id="birthYear" placeholder="년(4자)">
							</span>
						</div>
						<div class="form-control">
							<span><select name="birthMonth" style="width: 274px">
									<option value="00" selected="selected">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select> </span>
						</div>
						<div>
							<span> <input required="required" class="form-control"
								name="birthDate" id="birthDate" placeholder="일">
							</span>
						</div>
					</div>

					<div class="form-group">
						<label for="userGender">성별</label> <br> <input type="radio"
							name="userGender" value="남자" checked="checked">남자 <input
							type="radio" name="userGender" value="여자">여자
					</div>
					<div class="form-group">
						<label for="userEmail">본인 확인 이메일</label>
						<input name="title" id="title">
						<div style="display:flex">
						<input required="required" class="form-control" name="userEmail"
							id="userEmail">
						<input type="button" class="btn btn-info" id="emailCheck" value="중복확인">
						<input type="hidden" name="emailDuplication" id="emailDuplication" value="emailUncheck">
						</div>
					</div>
					<div id="checkMsg">
					</div>
					<div class="form-group">
						<label for="phoneNum">휴대전화</label>
						<input name="title" id="title">
						<input required="required" class="form-control" name="phoneNum"
							id="phoneNum">
					</div>
					<div class="form-group">
					<button class="btn btn-success" type="submit">등록</button>
					<button class="btn btn-warning" type="reset">초기화</button>
					</div>
				</form>

		</div>
	</div> -->
	
		<body>

		<div class="body">
			
			<div role="main" class="main">

				<section class="page-header page-header-modern page-header-background page-header-background-sm overlay overlay-color-primary overlay-show overlay-op-8 mb-5" style="background-image: url(${pageContext.request.contextPath}/resources/img/page-header/page-header-elements.jpg);">
					<div class="container">
						<div class="row">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1>SIGN UP</h1>

							</div>
							<div class="col-md-12 align-self-center order-1">
								<ul class="breadcrumb breadcrumb-light d-block text-center">
									<li><a href="#">Home</a></li>
									<li class="active">SIGN UP</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row">
						<div class="col-lg-9 order-1 order-lg-2">
							
							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mb-0">SIGN<strong class="font-weight-extra-bold"> UP</strong></h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0">회원 가입 화면입니다. 공란에 적절한 내용을 기입해주세요.</p>
							</div>

							<form onsubmit="return checkValue()" action="/member/join" method="post" name="userInfo">

							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">ID</label>
							        <div class="col-lg-7">
							            <input class="form-control" name="userId" id="userId" onkeydown="inputIdChk()" placeholder="사용하실 ID를 입력해주세요">
									</div>
									<div class="col-lg-2">
										<input type="button" class="btn btn-info" value="중복확인" onclick="openIdChk()">
										<input type="hidden" name="idDuplication" value="idUncheck">
									</div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Password</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="password" name="passWord" id="passWord" onkeyup="passwordCheck()" placeholder="사용하실 PW를 입력해주세요">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Confirm password</label>
							        <div class="col-lg-9">
							            <input class="form-control" type="password" name="passWordCheck" id="passWordCheck" onkeyup="passwordCheck()" placeholder="비밀번호 확인란입니다">
							        </div>
							    </div>
							    <div id="checkPWMsg">
								</div>
								<div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Name</label>
							        <div class="col-lg-9">
							            <input class="form-control" name="userName" id="userName"  placeholder="이름을 입력해주세요">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Email</label>
							        <div class="col-lg-9">
							            <input class="form-control" id="userEmail" name="userEmail"  placeholder="email를 입력해주세요">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2">Address</label>
							        <div class="col-lg-3">
							            <input class="form-control" type="text" id="stateSi" name="stateSi" placeholder="시">
							        </div>
							        <div class="col-lg-6">
							            <input class="form-control" type="text" id="stateGu" name="stateGu" placeholder="구">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2"></label>
							        <div class="col-lg-3">
							            <input class="form-control" type="text" id="stateDong" name="stateDong" placeholder="동">
							        </div>
							        <div class="col-lg-6">
							            <input class="form-control" type="text" id="stateDetail" name="stateDetail" placeholder="상세주소">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">Phone</label>
							        <div class="col-lg-9">
							            <input class="form-control" name="phoneNum" id="phoneNum"  placeholder="-없이 입력해주세요">
							        </div>
							    </div>
								<div class="form-group row">
							        <label class="col-lg-3 font-weight-bold text-dark col-form-label form-control-label text-2 required">BirthDay</label>
							        <div class="col-lg-9">
							            <input class="form-control" name="birthDay" id="birthDay"  placeholder="생년월일를 입력해주세요 ex)1992년 4월 17일 -> 920417">
							        </div>
							    </div>
							
							    <div class="form-group row">
									<div class="form-group col-lg-9">
										
									</div>
									<div class="form-group col-lg-3">
										<input type="submit" value="Save" class="btn btn-primary btn-modern float-right" data-loading-text="Loading...">
									</div>
							    </div>
							</form>

						</div>
					</div>

				</div>

			</div>
 
		</div>

	
	</body>
	
	
	<script type="text/javascript">

	
		$(document).ready(function() {

			
			//reset 버튼
			$("button[type='reset']").click(function() {
				
				$("form")[0].reset(); 
			});
			
		
		 	//이메일 중복체크
			$('#emailCheck').click(function(){
				var email = $('input[name=userEmail]').val();
				  
	            if (!email) {
	                alert("Email를 입력하지 않았습니다.");
	                return false;
	            }; 
	            $.ajax({
	            	  url:'/member/checkEmail',
	            	  type: "POST",
	            	  data: {
	            		  "checkEmail":email
	            	  },
	            	  success: function(data) {
	            		 if($.trim(data) == 0 ){
	            			// 성공 시 동작]
	            			$('#emailDuplication').val('emailCheck');
	            			$('#checkMsg').html('<p style="color:blue">사용 가능한 이메일입니다.</p>');
	            		}else{
	            			$('#checkMsg').html('<p style="color:red">중복된 이메일이 존재합니다. 다른 이메일를 입력하세요.</p>');
		            		 
	            		}
	            	    
	            	  }
	            	});
	             
			});		
		 	
	});
	


	</script>

</body>
</html>