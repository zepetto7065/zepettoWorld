<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/views/header.jsp" />
<meta charset="utf-8">
<title>jsTree test</title>

</head>

<body>
	<!-- 3 setup a container element -->
	<div id="jstree">
		<!-- in this example the tree is populated from inline HTML -->
		<!--     <ul>
      <li> ZepettoWorld _ 개발팀
        <ul>
          <li id="child_node_1">WebApplication 개발 1팀</li>
          <li>App Application 개발 2팀</li>
        </ul>
      </li>
      <li>ZepettoWorld _ 영업팀</li>
    </ul>  -->
	</div>
	<table>

	</table>
	<!-- <button>demo button</button> -->

	<script>
		$(function() {
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

			$('#jstree').jstree(
					{
						'core' : {
							'data' : jsonData //jsonArray 데이터 출력
						},
						'plugins' : [ "themes", "json_data", "ui", "sort",
								"types", "crrm", "cookies", "search" ]

					}).bind("select_node.jstree", function(evt, data) {
				console.log("nodeId : " + data.node.id); //노드가 선택된 뒤 처리 이벤트
				var nodeId = data.node.id;
				getOrgUserList(nodeId); // 선택된 nodeId에 따라 조직 사용자 리스트 출력
	
				
			});

		});
		
		function getOrgUserList(nodeId){
			alert("111")
			$.ajax({
				type : "GET",
				url : "/popup/orgUserList",
				async : false,
				data : {"nodeId" : nodeId},
				success : function(data) {
					console.log(data);
					$.each()
					
				},
				error : function() {
					alert("orgUserList data 통신 실패");
				}
			});
		}

		/*      // 7 bind to events triggered on the tree
		 $('#jstree').on("changed.jstree", function (e, data) {
		 console.log(data.selected);
		 }); */

		/*
		// 8 interact with the tree - either way is OK
		$('button').on('click', function () {
		  $('#jstree').jstree(true).select_node('child_node_1');
		  $('#jstree').jstree('select_node', 'child_node_1');
		  $.jstree.reference('#jstree').select_node('child_node_1');
		}); */
	</script>


</body>
</html>