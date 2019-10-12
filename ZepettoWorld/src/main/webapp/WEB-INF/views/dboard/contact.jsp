<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<jsp:include page="../header.jsp"></jsp:include>
    <style>
       #map {
        height: 400px;
        width: 50%;
       }
    </style>
  </head>
  <body>
  	<div>
  		<strong>유상문 ( Yoo Sang Moon )</strong>
  		<br><br>
  		서울시 관악구 남현동 
  		<br>
  		+82 9108 5420
  		<br>
  		zepetto.yoo@gmail.com
  		<br>
		adioson@naver.com
		<br>
		개인 블로그 : <a>https://blog.naver.com/adioson</a>
  	</div>
  	<br>
    <div id="map"></div>
    <script>
      function initMap() {
        var home = {lat: 37.474806, lng: 126.977788};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: home
        });
        var marker = new google.maps.Marker({
          position: home,
          map: map,
		  title: "Zepetto World"
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAN-wl-7Qz76pxFSMJyGkQl7p1B6sF0tU&callback=initMap">
    </script>
  </body>
</html>