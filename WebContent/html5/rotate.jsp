<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rotate</title>
<style>
	#can{
		border: 1px dashed #123456;
	}

</style>
</head>
<body>
	<h3>도형 회전</h3>
	<canvas id='can' width='400px' height='400px'></canvas>
	<br/>
	<form name='frm'>
		<label>도형의 개수</label>
		<input type='range' name='cnt' min='1' max='500'/>
		<output name='msg' value='1'></output> <!-- 무언가를 표시하기 위한 공간 확보 -->
	</form>
	<script>
		var ctx = document.getElementById('can').getContext('2d');
		ctx.translate(150,150);
		frm.cnt.onchange = function(){
			frm.msg.value = frm.cnt.value;
			ctx.linewidth='1';
			ctx.strokeStyle='rgb(0,0,255)';
			ctx.clearRect(-100,-100,250,250);
			for(i=0; i<frm.msg.value; i++){
				var c = frm.msg.value;
				ctx.rotate(Math.PI/180*(360/c));
				ctx.strokeRect(0,0,50,50);
			}
		}
	</script>
	
</body>
</html>