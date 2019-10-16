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
    <ul>
      <li> ZepettoWorld _ 개발팀
        <ul>
          <li id="child_node_1">WebApplication 개발 1팀</li>
          <li>App Application 개발 2팀</li>
        </ul>
      </li>
      <li>ZepettoWorld _ 영업팀</li>
    </ul>
  </div>
  <!-- <button>demo button</button> -->

  <!-- 4 include the jQuery library -->
  <script src="dist/libs/jquery.js"></script>
  <!-- 5 include the minified jstree source -->
  <script src="dist/jstree.min.js"></script>
  <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
  </script>


</body>
</html>