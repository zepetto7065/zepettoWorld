
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
	
				if (!form.ssoId.value) {
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
	
				if (!form.birthYear.value) {
					alert("년도를 입력하세요.");
					return false;
				}
	
				if (isNaN(form.birthYear.value)) {
					alert("년도는 숫자만 입력가능합니다.");
					return false;
				}
	
				if (form.birthMonth.value == "00") {
					alert("월을 선택하세요.");
					return false;
				}
	
				if (!form.birthDate.value) {
					alert("날짜를 입력하세요.");
					return false;
				}
	
				if (isNaN(form.birthDate.value)) {
					alert("날짜는 숫자만 입력가능합니다.");
					return false;
				}
	
				if (!form.userEmail.value) {
					alert("메일 주소를 입력하세요.");
					return false;
				}
	
				if (form.emailDuplication.value != "emailCheck") {
					alert("이메일 중복체크를 해주세요.");
					return false;
				}
				
				if (!form.phoneNum.value) {
					alert("전화번호를 입력하세요.");
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
				var ssoId = $("input[name=ssoId]").val();
				window.open("/idCheckForm?ssoId=" + ssoId, "chkForm",
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
				
				if(password==passWordCheck){
					document.getElementById("checkPWMsg").innerHTML = "비밀번호가 일치합니다."
				}else{
					document.getElementById("checkPWMsg").innerHTML = "비밀번호가 불일치합니다."
				}
			}
	
	</script>   
	<div class="container">
		<div class="row" style="margin:auto;width:300px;">
				<form onsubmit="return checkValue()" action="/member/join" method="post" name="userInfo">
					<div class="form-group">
				
						<label for="ssoId">아이디</label>
						<div style="display:flex">
						<input type="text" maxlength="50" required="required" class="form-control" name="ssoId" id="ssoId"
							onkeydown="inputIdChk()"> 
							<input type="button" class="btn btn-info" value="중복확인" onclick="openIdChk()">
							<input type="hidden" name="idDuplication" value="idUncheck">
						</div>
					</div>
					
					<div class="form-group">
						<label for="passWord">비밀번호</label>
						<!-- <input name="title" id="title"> -->
						<input type="password" required="required" class="form-control"
							name="passWord" id="passWord" onkeyup="passwordCheck()">
					</div>

					<div class="form-group">
						<label for="passWordCheck">비밀번호 재확인</label>
						<!-- <input name="title" id="title"> -->
						<input type="password" required="required" class="form-control"
							name="passWordCheck" id="passWordCheck" onkeyup="passwordCheck()">
					</div>
					<div id="checkPWMsg">
					</div>
					<br>
					<div class="form-group">
						<label for="userName">이름</label>
						<!-- <input name="title" id="title"> -->
						<input required="required" class="form-control" name="userName"
							id="userName">
					</div>
					<div class="form-group" id="birthRap">
						<label for="birthDate">생년월일</label>
						<!-- <input name="userName" id="userName"> -->
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
						<!-- <input name="title" id="title"> -->
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
						<!-- <input name="title" id="title"> -->
						<input required="required" class="form-control" name="phoneNum"
							id="phoneNum">
					</div>
					<div class="form-group">
					<button class="btn btn-success" type="submit">등록</button>
					<button class="btn btn-warning" type="reset">초기화</button>
					</div>
				</form>

		</div>
	</div>
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