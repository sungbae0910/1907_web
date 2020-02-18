<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attr_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>attr메소드를 이용하여 속성 부여</h3>

<img src='../images/down.jpg'>
<img src='../images/down.jpg'>
<img src='../images/down.jpg'>

<script>
$(document).ready(function(){
	$('img').attr('width', function(index){
		return (index+1)*100;
	});
});
</script>
</body>
</html>