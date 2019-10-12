<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/views/header.jsp" />
<script type="text/javascript">

  
        // 사용하기 클릭 시 부모창으로 값 전달 
        function sendCheckValue(){
            // 중복체크 결과인 idCheck 값을 전달한다.
            opener.document.userInfo.idDuplication.value ="idCheck";
            // 회원가입 화면의 ID입력란에 값을 전달
            opener.document.userInfo.ssoId.value = document.getElementById("checkText").value;
            
            if (opener != null) {
                opener.chkForm = null;
                self.close();
            }    
        }    
        
       
   </script>

</head>
<body>
<div id="wrap" class="container">
	<br>
	<b><font size="4" color="gray">아이디 중복체크</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
	<div id="checkMsg"></div>
		<form id="checkForm">
			<input type="text" name="idinput" id="checkText">
			<input type="button" value="중복확인" id="checkBtn">			
		</form>
		<div id="msg"></div>
		<br>
		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
		
		<input id="cancelBtn" type="button" value="취소" onclick="window.close()"><br>
	</div>
</div>


<script type="text/javascript">
	
		var checkId = '${param.ssoId}';

		
		$(document).ready(function() {	
				$('#checkText').val(checkId);		
			 
			 	// 아이디 중복체크

				$('#checkBtn').click(function(){
					var id = $('input[name=idinput]').val();
					  
		            if (!id) {
		                alert("아이디를 입력하지 않았습니다.");
		                return false;
		            }; 
		            			            
		            $.ajax({
		            	  url:'/member/checkId',
		            	  type: "GET",
		            	  data: {
		            		  "id":id
		            	  },
		            	  success: function(data) {
		            		 if($.trim(data) == 0 ){
		            			// 성공 시 동작]
		            			$('#checkMsg').html('<p style="color:blue">사용 가능한 아이디입니다.</p>');
		            		}else{
		            			$('#checkMsg').html('<p style="color:red">중복된 아이디가 존재합니다. 다른 아이디를 입력하세요.</p>');
			            		 
		            		}
		            	    
		            	  }
		            	});
		             
				});		
			 	
			 	$('#useBtn').click(function(){
			 		 document.getElementById("userId").value = $('input[name=idinput]').val();
		                self.close();

			 	});
		});

	</script>


</body>
</html>