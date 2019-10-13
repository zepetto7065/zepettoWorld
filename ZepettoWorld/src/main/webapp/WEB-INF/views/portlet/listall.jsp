<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<jsp:include page="/WEB-INF/views/header.jsp" />
<!DOCTYPE html>
<html>
<style>
.portlet_width {
	display: inline-block;
	width: 200px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
	<body>

		<div class="body">

			<div role="main" class="main">

				<div class="container py-2">

					<div class="row">
						<div class="col">

							<div class="row">
								<div class="col pb-3">



								<table class="table table-hover" style="line-height:0px">
									<thead style="text-align:center">
										<tr>
											<th>No</th>
											<th style="width:40%">제목</th>
											<th>작성자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="board">
										  <tr>
										    <td style="text-align:center">${board.bno}</td>
										    <td class="portlet_width"><a href="javascript:popupOpen(${board.bno})">${board.title}</a></td>
										    <td style="text-align:center">${board.ssoId}</td>						
										  </tr>	
										 </c:forEach>
										 	
									</tbody>
								</table>

								</div>



							</div>
							
						
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
	<script type="text/javascript">	

		
		function popupOpen(bno){
			var popupX = (document.body.offsetWidth / 2) - (200 / 2);
			//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

			var popupY= (document.body.offsetHeight / 2) - (300 / 2);
			//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		
						
			window.open("/board/readPopup?bno="+bno,"게시판 읽기","status=no, height=680, width=800, left="+ popupX + ", top="+ popupY);
		};

	</script>
	
	</body>
</html>
