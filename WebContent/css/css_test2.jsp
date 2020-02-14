<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_test2</title>
<style>
	p{
		font-family : 궁서체;
	}
	
	li{
		border : 1px dashed black;
		color : blue;
	}
	
	#p1{
		border : 1px dashed #454521;
		height : 60px;
	}
	
	.c1{
		border : 1px dotted #123456;
		background-color: #ccccff;
		height : 60px;
	}
	
	.c2{
		font-size : 30px;
		color : white;
	}
</style>
</head>
<body>
	<h3>css적용하기(id, class)</h3>
	<p>
		<ul>
			<li>id : #으로 호출</li>
			<li>class : .으로 호출</li>
		</ul>
		<hr/>
	</p>

	<p id='p1'>p1</p>
	<p class='c1'>c1</p>
	<p class='c1 c2'>c1, c2</p>
	
</body>
</html>