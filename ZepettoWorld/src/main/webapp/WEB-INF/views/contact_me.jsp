<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/header.jsp" />

<!DOCTYPE html>
<html>

	<body>
		<div class="body">
	
			<div role="main" class="main">

				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				<div id="map" class="google-map mt-0" style="height: 500px;"></div>

				<div class="container">

					<div class="row py-4">
						<div class="col-lg-6">

							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mt-2 mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="200"><strong class="font-weight-extra-bold">Contact</strong> Me</h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="400">Feel free to ask for details, don't save any questions!</p>
							</div>

							<form id="contactForm" class="contact-form" action="mailSending" method="POST">
																
								<div class="form-row">
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">Full Name</label>
										<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name" >
									</div>
									<div class="form-group col-lg-6">
										<label class="font-weight-bold text-dark text-2">Your Email Address</label>
										<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="fromMail" id="email" >
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">Subject</label>
										<input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control" name="title" id="subject" >
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="font-weight-bold text-dark text-2">Message</label>
										<textarea maxlength="5000" data-msg-required="Please enter your message." rows="8" class="form-control" name="content" id="message" ></textarea>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<input type="submit" onclick="javascript:reload()" value="Send Message" class="btn btn-primary btn-modern" data-loading-text="Loading...">
									</div>
								</div>
							</form>

						</div>
						<div class="col-lg-6">

							<div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="800">
								<h4 class="mt-2 mb-1">Our <strong>Office</strong></h4>
								<ul class="list list-icons list-icons-style-2 mt-2">
									<li><i class="fas fa-map-marker-alt top-6"></i> <strong class="text-dark">Address:</strong> 서울특별시 강서구 방화동 (방화역)</li>
									<li><i class="fas fa-phone top-6"></i> <strong class="text-dark">Phone:</strong> 010 - 9108 - 5420</li>
									<li><i class="fas fa-envelope top-6"></i> <strong class="text-dark">Email:</strong> <a href="mailto:mail@example.com">adioson@naver.com</a></li>
								</ul>
							</div>

							<div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="950">
								<h4 class="pt-5">Business <strong>Hours</strong></h4>
								<ul class="list list-icons list-dark mt-2">
									<li><i class="far fa-clock top-6"></i> Monday - Friday - 9am to 5pm</li>
									<li><i class="far fa-clock top-6"></i> Saturday - 9am to 2pm</li>
									<li><i class="far fa-clock top-6"></i> Sunday - Closed</li>
								</ul>
							</div>

							<h4 class="pt-5">Get in <strong>Touch</strong></h4>
							<p class="lead mb-0 text-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

						</div>

					</div>

				</div>

			</div>

		</div>
		

		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAN-wl-7Qz76pxFSMJyGkQl7p1B6sF0tU&callback=initMap" async defer></script>
		
		<script>
		  function reload(){
 			window.location.reload();
		  } 
		
	      function initMap() {
			var myHome = {lat: 37.578747, lng: 126.810822};
	    	
	        var map = new google.maps.Map(document.getElementById('map'), {
	          center: myHome,
	          zoom: 15
	        });
	        
	        var marker = new google.maps.Marker({
	        	position: myHome,
	        	map: map
	        });
	      }
	      
	    </script>


	</body>
</html>
