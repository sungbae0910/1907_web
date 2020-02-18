<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_3</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	.high-light-0{
		background-color: blue;
	}
	.high-light-1{
		background-color: orange;
	}
	.high-light-2{
		background-color: skyblue;
	}
	.high-light-3{
		background-color: fuchsia;
	}
	.high-light-4{
		background-color: green;
	}
</style>
</head>
<body>
<h3>addClass()를 사용한 class 속성 추가</h3>
<h1>item - 0</h1>
<h1>item - 1</h1>
<h1>item - 2</h1>
<h1>item - 3</h1>
<h1>item - 4</h1>

<script>
$(document).ready(function(){
	$('h1').each(function(index, item){
		//item 대신에 this를 작성해도 됨.
		$(item).addClass('high-light-'+index);
	});
});
</script>
</body>
</html>