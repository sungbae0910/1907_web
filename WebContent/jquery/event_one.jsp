<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one메소드를 활용하여 이벤트 한번 발생</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>one메소드를 활용하여 이벤트 한번 발생</h3>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
$(function(){
	//one 메소드를 활용하면 이벤트가 한번만 발생하고 제거됨
	$('h1').one('click', function(){
		$(this).html('click');
		alert('이벤트가 발생함');
	});
});



</script>
</body>
</html>