<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_display</title>
<style>
	div{
		border : 1px solid skyblue;
		width:200px;
		height:100px;
		display: inline-block;
	}
	
	#span>span{
		display: inline-block;
	}
	
	p{
		border : 1px solid blue;
		margin : 5px;
	}
</style>
</head>
<body>
	<h3>display</h3>
	<div>abc</div>
	<div>123</div>
	<div>가나다</div>
	
	<div id='span'>
	<span>1</span>
	<span>2</span>
	<span>3</span>
	</div>
	
	<p>123</p>
	<p>123</p>
	<p>123</p>
</body>
</html>