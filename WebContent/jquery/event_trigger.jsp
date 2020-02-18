<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_trigger</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>트리거를 이용한 이벤트</h3>

<h1>Start: </h1>
<h1>Start: </h1>

<script>
$(document).ready(function(){
	$('h1').click(function(){
		$(this).html(function(index, html){
			return html+'★';
		});
	});
	
	//trigger로 이벤트를 1초마다 강제 발생시킴
	setInterval(function(){
		$('h1').last().trigger('click');
	}, 1000);
});
</script>
</body>
</html>