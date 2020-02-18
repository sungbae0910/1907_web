<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attr메소드를 이용한 속성부여</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>attr메소드를 이용한 속성부여</h3>

<img src='../images/down.jpg'>
<img src='../images/down.jpg'>
<img src='../images/down.jpg'>

<script>
$(document).ready(function(){
	$('img').attr({
		width: function(index){
			return (index+1)*100;
		},
		height:100
	})
});
</script>
</body>
</html>