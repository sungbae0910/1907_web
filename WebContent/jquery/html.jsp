<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html메소드를 이용하여 문자추가</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>html메소드를 이용하여 문자추가</h3>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>
<script>
$(document).ready(function(){
	$('h1').html(function(index, html){
		return  '★'+html+'★';
	});
});
</script>
</body>
</html>