<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canvas(shadow)</title>
<style>
	.can{
		border: 1px dashed #ff0000
	}
</style>
</head>
<body>

	<canvas id='can1' class='can' width='300px' height='150px'></canvas><br/>
	<form name='frm'>
		<label>바탕색</label>
		<input type='color' name='bgcolor'/>
		<label>그림자색</label>
		<input type='color' name='sdcolor'/>
		<input type='button' value='확인' id='btnRun'/>
	</form>

<script>
	var btn = document.getElementById('btnRun');
	btn.onclick = function(){
		var bc = frm.bgcolor.value;
		var sc = frm.sdcolor.value;
		alert(bc+","+sc);
		
		var canvas = document.getElementById('can1');
		var ctx = canvas.getContext('2d');
		
		ctx.fillStyle=bc; //배경색지정
		ctx.shadowColor=sc;//그림자색 지정
		ctx.shadowOffsetX='3'; // ↓
		ctx.shadowOffsetY='3';//그림자 세팅
		ctx.shadowBlur='6'; //    ↑
		ctx.fillRect(30,30, 230, 80); //배경색 그리기
	}
</script>
</body>
</html>