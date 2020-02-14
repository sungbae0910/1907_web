<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그라데이션</title>
<style>
	.can{
		border : 1px dashed #ff2500;
	}
</style>
</head>
<body>

	<h3>선형 그라데이션</h3>
	<canvas id='can1' class='can' width='400px' height='200px'></canvas><br/>
	<form name='frm'>
		<input type='color' name='fc' value='#FF0000'/>
		<input type='color' name='sc' value='#00ff00'/>
		<input type='color' name='tc' value='#0000ff'/>
		<input type='button' value='선형' name='btnLinear'/>
	</form> 
	<script>
		var linear = frm.btnLinear;
		linear.onclick=function(){ //자바스크립트 이벤트핸들러는 무조건 소문자
			var fc = frm.fc.value;
			var sc = frm.sc.value;
			var tc = frm.tc.value;
			var canvas = document.getElementById('can1').getContext('2d'); 
			var gra = canvas.createLinearGradient(30,30,230,90) //그라디언트 영역 설정
			
			gra.addColorStop(0,fc);
			gra.addColorStop(0.5, sc);
			gra.addColorStop(1, tc);
			
			canvas.fillStyle = gra;
			canvas.fillRect(30,30,230,90)
		}
	</script>	
	
	<h3>원형 그라데이션</h3>
	<canvas id='can2' class='can' width='300px' height='300px'></canvas><br/>
	
	<form name='frm2'>
		<input type='color' name='fc' value='#FF0000'/>
		<input type='color' name='sc' value='#00ff00'/>
		<input type='color' name='tc' value='#0000ff'/>
		<input type='button' value='원형' name='btnRadial'/>
	</form>
	
	<script>
		frm2.fc.value = localStorage.getItem('color');
		frm2.sc.value = localStorage.getItem('color1');
		frm2.tc.value = localStorage.getItem('color2');
		
		frm2.btnRadial.onclick=function(){
			var fc2 = frm2.fc.value;
			var sc2 = frm2.sc.value;
			var tc2 = frm2.tc.value;
			var canvas2 = document.getElementById('can2').getContext('2d');
			var gra2 = canvas2.createRadialGradient(150,150,30, 150,150,90);
			
			gra2.addColorStop(0, fc2);
			gra2.addColorStop(0.5, sc2);
			gra2.addColorStop(1, tc2);
			
			canvas2.fillStyle = gra2;
			canvas2.fillRect(55,55,180,180)
			
			localStorage.setItem('color', fc2);
			localStorage.setItem('color1', sc2);
			localStorage.setItem('color2', tc2);
		}
	</script>
</body>
</html>