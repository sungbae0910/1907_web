<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_context</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	*{
		margin:0px;
		padding:0px;
	}
	div{
		margin:5px;
		padding:3px;
		border: 3px solid black;
		border-radius: 10px;
	}
</style>
</head>
<body>
<h3>context객체 </h3>

<div>
	<h1>Header 1</h1>
	<p>Paragraph</p>
</div>
<div>
	<h1>Header 2</h1>
	<p>Paragraph</p>
</div>
<div>
	<h1>Header 3</h1>
	<p>Paragraph</p>
</div>

<script>
$(document).ready(function(){
	$('div').click(function(){
		var header = $('h1', this).text();
		var content = $('p', this).text();
		
		alert(header+'-'+content);
	});
});

</script>
</body>
</html>