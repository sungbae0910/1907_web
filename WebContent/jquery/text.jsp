<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>text</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>text메소드를 이용하여 내용 추가</h3>

<div></div>
<div></div>
<div></div>

<script>
$(document).ready(function(){
	$('div').text('<h1>$().html().text() Method</h1>');
});
</script>

</body>
</html>