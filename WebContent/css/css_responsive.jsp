<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_responsive</title>
<style media='screen and (min-width:1000px)'>
	#main{
		width: 1200px; 
		overflow: hidden;
	}
	#main div{float: left;}
	#left{width:200px; height:300px; background-color: skyblue;}
	#center{width:800px; height: 300px; background-color: #eee;}
	#right{width:200px; height: 300px; background-color: #eec;}
</style>

<style media='screen and (min-width:800px) and (max-width:999px)'>
	#main{
		width: 900px; 
		overflow: hidden;
	}
	#main div{float: left;}
	#left{
		width:200px; 
		height: 300px; 
		background-color: skyblue;
	}
	#center{
		width:700px; 
		height: 300px; 
		background-color: #eee;
	}
	#right{
		clear: left; 
		width:100%; 
		height: 300px; 
		background-color: #eec;
	}
</style>

<style media='screen and (max-width:799px)'>
	#main{width: 900px; overflow: hidden;}
	#main div{float: left;}
	#left{width:100%; height: 300px; background-color: skyblue;}
	#center{width:100%; height: 300px; background-color: #eee;}
	#right{width:100%; height: 300px; background-color: #eec;}
</style>

</head>
<body>

	<h3>responsive(반응형 웹)</h3>
	<dl>
		<dt>link 태그를 사용한 반응형</dt>
			<dd>media='screen and (최소크기) and (최대크기)' href='path'</dd>
		<dt>style태그를 사용한 반응형 </dt>
			<dd>media='screen and (최소크기) and (최대크기)'</dd>
		<dt>media='screen and (orientation:portrait(세로)) | landscape(가로))'</dt>
			<dd></dd>
	</dl>
	
	<div id='main'>
		<div id='left'></div>
		<div id='center'></div>
		<div id='right'></div>
	</div>

</body>
</html>