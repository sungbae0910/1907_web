<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_theme</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#main{
		width: 400px;
		height: 200px;
		border: 2px solid skyblue;
	}
	#subject{
		border: 1px dashed black;
		width: 200px;
		height: 80px;
		margin-left: 80px;
		margin-top : 20px;
	}
	#content{
		border: 1px dashed black;
		width: 200px;
		height: 80px;
		margin-left: 80px;
	}
</style>
</head>
<body>
<div id='main'>
	<div id='subject'>
	테마 바꾸기	
	</div>
	<div id='content'>
	</div>
</div>
<button id='btn1'>흑백테마</button>
<button id='btn2'>하늘테마</button>
<button id='btn3'>땅테마</button>

<script>
$(document).ready(function(){
 	$('#btn1').click(function(){
		$('#main>div').css({
			'backgroundColor':'black', 'color':'white'
		});
		$('#content').html('흑백테마!!');
	}); 
	
	$('#btn2').click(function(){
		$('#main>#subject').css({
			'backgroundColor':'skyblue', 'color':'white'
		});
		$('#main>#content').css({
			'backgroundColor':'skyblue', 'color':'black'
		});
		$('#content').html('하늘테마!!');
	});
	
	$('#btn3').click(function(){
		$('#main>#subject').css({
			'backgroundColor':'green', 'color':'black'
		});
		$('#main>#content').css({
			'backgroundColor':'#47C83E', 'color' : 'white'
		});
		$('#content').html('땅테마!!');
	});
});
</script>
</body>
</html>