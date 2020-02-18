<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_mouse</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>마우스 이벤트</h3>
<canvas id='canvas' width='700' height='400' style='border: 3px solid black'>
</canvas>

<script>
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');
$('#canvas').on({
	mousedown :  function(event){
		var position = $(this).offset();
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.beginPath();
		context.moveTo(x, y);
	}, mouseup : function(event){
		var position = $(this).offset();
		var x = event.pageX - position.left;
		var y = event.pageY - position.top;
		
		context.lineTo(x, y);
		context.stroke();
	}
});
</script>
</body>
</html>