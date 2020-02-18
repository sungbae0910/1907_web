<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수를 활용한 css적용</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>변수를 활용한 css적용</h3>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
$(document).ready(function(){
	var color = ['skyblue', 'purple', 'orange'];
	$('h1').css({
		color : function(index){
			return color[index];
		},
			backgroundColor : 'black'
	});
});
</script>

</body>
</html>