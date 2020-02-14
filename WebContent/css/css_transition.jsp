<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transition</title>
<style>
	div{
		/* display: inline; */
		display: hidden;
		overflow: hidden;
		border: 2px solid blue;
		padding: 20px;
		width: 5px;
		margin: 10px;
		transform: rotate(0deg);
		opacity: 0.1;
	}
	
	div:hover{
		background-color: gray;
		opacity: 1.0;
		width:100px;
		transition: color 1s, background 1s, opacity 1s, width 1s;
	}
</style>
</head>
<body>
	<h3><label>transition</label></h3>
	<div><label>HTML</label></div>
	<div><label>CSS</label></div>
	<div><label>JavaScript</label></div>
	<div><label>JSP</label></div>
	<div><label>Java</label></div>

</body>
</html>