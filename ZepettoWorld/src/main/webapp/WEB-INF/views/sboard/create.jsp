<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.filedrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background: yellow;
	margin: auto;
}

.uploadedList li {
	list-style-type: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../header.jsp"></jsp:include>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<form action="/sboard/create" method="post" >
				<div class="form-group">
					<label for="title">제목</label>
					<!-- <input name="title" id="title"> -->
					<input required="required" class="form-control" name="title"
						id="title">
				</div>
				<div class="form-group">
					<label for="userName">작성자</label>
					<!-- <input name="userName" id="userName"> -->
					<input required="required" class="form-control" name="userName"
						id="userName">
				</div>
				<div class="form-group">
					<label for="content">내용</label>
					<textarea required="required" class="form-control" name="content"
						id="content" rows="3"></textarea>
				</div>
			</form>

			<div class="form-group">
				<button class="btn btn-success" type="submit">등록</button>
				<button class="btn btn-warning" type="reset">초기화</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready((function() {

			$("button[type='submit']").click(function(event) {
				/* $("form").submit(); */
				event.preventDefault();
				var form = $("form");
				var str="";
				
				form.append(str);
				form.get(0).submit();
				
				
			});
			
			$("button[type='reset']").click(function() {
				
				$("form")[0].reset(); 
			});
		}));

		function getFileInfo(fullName) {
			var fileName, imgscr, getLink, fileLink;

			if (checkImageType(fullName)) {
				imgsrc = "/displayFile?fileName=" + fullName;
				var pre = fullName.substring(0, 12);
				var suff = fullName.substring(14);

				getLink = "/displayFile?fileName=" + pre + suff;

			} else {
				imgsrc = "/resources/img/etc.png";
				getLink = "/displayFile?fileName=" + fullName;

			}

			fileName = fullName.substring(fullName.indexOf("_") + 1);

			return {
				imgsrc : imgsrc,
				fileName : fileName,
				getLink : getLink,
				fullName : fullName
			};

		}

		function checkImageType(fileName) {
			var pattern = /jpg|gif|png|jpeg/i;

			return fileName.match(pattern);

		}
	</script>

</body>
</html>