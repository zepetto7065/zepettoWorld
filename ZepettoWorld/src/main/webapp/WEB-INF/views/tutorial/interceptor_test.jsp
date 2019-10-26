<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-12">
		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">인터셉터 결과 데이터</h3>
			</div>
			<div class="box-body">
				<a href="${path}/interceptor/doB">doB 페이지 이동</a>
			</div>
			<div class="box-footer">
				<p>결과데이터 : ${result}</p>
			</div>
		</div>
	</div>


  <div class="padd">
    <h6>네이버 로그인 성공 화면</h6>
    <hr />
    <div id="resultCode" style="text-align:center"></div>
    <div id="message" style="text-align:center"></div>
    <div id="nickname" style="text-align:center"></div>
    <div id="image" style="text-align:center"><img src=""></img</div>
    <div id="age" style="text-align:center"></div>
    <div id="gender" style="text-align:center"></div>
    <div id="id" style="text-align:center"></div>
    <div id="name" style="text-align:center"></div>
    <div id="birthday" style="text-align:center"></div>
    <a href="https://nid.naver.com/oauth2.0/token?grant_type=delete&client_id=${id}&client_secret=${pw}&access_token=${token}&service_provider=NAVER">로그아웃</a>
  </div>

  <script>
    $(document).ready(function(){
      var obj = JSON.parse('${result}');

      $("#resultCode").text("결과코드 : " + obj.resultcode);
      $("#message").text("결과메시지 : " + obj.message);
      $("#age").text("나이 : " + obj.response.age);
      $("#name").text("이름 : " + obj.response.name);
      $("#birthday").text("생일 : " + obj.response.birthday);
      $("#enc_id").text("무슨 아이디 : " + obj.response.enc_id);
      $("#gender").text("성별 : " + obj.response.gender);
      $("#id").text("아이디 : " + obj.response.id);
      $("#name").text("이름 : " + obj.response.name);
      $("#nickname").text("닉네임 : " + obj.response.nickname);
      $("#image").children("img").attr("src", obj.response.profile_image);
    });
  </script>
</body>
</html>