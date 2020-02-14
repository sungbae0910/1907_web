<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_test</title>
<style>
	#div1{
		border : 1px dotted #554412;
		background-color : #abc;
		width : 500px;
		height : 300px;
	}
</style>
<link rel='styleSheet' type='text/css' href='css_test.css'/>
</head>
<body>
	<h3>css적용방법 3가지</h3>
	<p>
		<ol>
			<li>&lt style &gt 태그를 이용한 방법</li>
			<li>태그 속성중 style을 사용하는 방법</li>
			<li>외부에서 css파일을 작성한 후 적용</li>
		</ol>
	</p>
	<div id='div1'></div>
	
	<div id='div2' style='border:1px solid #00f; width:500px; height:300px;'></div>
	
	<div id='div3'></div>
</body>
</html>