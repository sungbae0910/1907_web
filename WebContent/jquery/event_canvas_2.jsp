<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_cavas_2</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>canvas를 이용해 곡선 구현</h3>

<canvas id='canvas' width='700' height='400' style='border: 3px solid black'>
</canvas>

<script>
var canvas = document.getElementById('canvas');
var context = canvas.getContext('2d');
context.strokeStyle='rgb(255,0,0)';
var flag = false; //mousedown일때 true, mouseup일때 false

$(canvas).on({
	mousemove:
		function(ev){
		if(flag){
			let pos = $(this).offset();
			let x = ev.pageX-pos.left;
			let y = ev.pageY-pos.top;
			context.lineTo(x,y);
			context.stroke();
		}
	},
	mousedown:
		function(ev){
		let pos = $(this).offset();
		let x = ev.pageX-pos.left;
		let y = ev.pageY-pos.top;
		context.beginPath();
		context.moveTo(x, y);
		flag=true;
	},
	mouseup:
		function(ev){
		let pos = $(this).offset();
		let x = ev.pageX-pos.left;
		let y = ev.pageY-pos.top;
		context.beginPath();
		context.moveTo(x,y);
		flag=false;
	}
});
</script>
</body>
</html>