<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>off메소드를 활용하여 메소드 한번실행</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>off메소드를 활용하여 메소드 한번실행</h3>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>
	
<script>
$(document).ready(function(){
	// 클릭했을때 클릭한 태그를 click으로 변경하고 이벤트가 발생했다는 alert을 띄어줌
	$('h1').click(function(){
		$(this).html('click');
		alert('클릭이벤트 발생');
		// 이벤트를 제거시킴
		$(this).off();
	});
});
</script>
</body>
</html>