<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.can{
		border: 1px solid #0000ff;
	}
</style>

</head>
<body>
	<h3>Rect</h3>
	<canvas id='can1' class='can' width='300px' height='150px'></canvas>
	<script>
		var canvas = document.getElementById('can1');
		var ctx = canvas.getContext('2d');
		ctx.strokeStyle = 'rgb(255,0,0)';  //선의 색깔을 지정
		ctx.strokeRect(50,50,70,70) // 위치지정만큼 그림을 그림
		
		ctx.fillStyle= 'rgb(255,100,25)'; //fill 채워질 색
		ctx.fillRect(150,50,70,70)
	</script>
	
	<h3>반투명한 사각형</h3>
	<canvas id='can2' class='can' width='300px' height='150px'></canvas>
	<script> //자바스크립트...
		var canvas =  document.getElementById('can2');
		var ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(255,0,0,0.3)'; //rgba는 투명도를 설정할 수 있음
		ctx.fillRect(50,50,50,50);
		
		ctx.fillStyle = 'rgba(255,52,174,0.3)';
		ctx.fillRect(80,70,50,50);
	</script>
	
	<h3>막대그래프 그리기</h3>
	<canvas id='can3' class='can' width='500px' height='350px'></canvas>
	<script>
		var canvas = document.getElementById('can3');
		var ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(15,15,24,0.3)';
		ctx.fillRect(0,30,50,50);
		ctx.font='20px 궁서체';
		ctx.strokeText('25', 20, 60);
		
		ctx.fillStyle = 'rgb(155,52,124)';
		ctx.fillRect(0,90,100,50);
		
		ctx.fillStyle = 'rgb(105,152,174)';
		ctx.fillRect(0,150,450,50);
		
		ctx.fillStyle = 'rgba(255,0,0,0.3)';
		ctx.fillRect(0,210,250,50);
		
		ctx.fillStyle = 'rgba(255,52,174,0.3)';
		ctx.fillRect(0,270,490,50);
	</script>
	
	<h3>캔버스그리기</h3>
	<canvas id='can4' class='can' width='300px' height='150px'></canvas>
	<script>
		canvas = document.getElementById('can4');
		ctx = canvas.getContext('2d');
		
		ctx.strokeStyle='rgb(255,0,0)';
		ctx.beginPath(); //시작
			ctx.moveTo(150,10);
			ctx.lineTo(100,80);
			ctx.lineTo(180,80)
		ctx.closePath(); //종료
		ctx.stroke();
	</script>
	
	
	<h3>원호 그리기</h3>
	<canvas id='can5' class='can' width='300px' height='300px'></canvas>
	<script>
		canvas = document.getElementById('can5');
		ctx = canvas.getContext('2d');
		
		ctx.beginPath();
		ctx.arc(75,75,60,0, Math.PI*1, true);
		ctx.closePath();
		ctx.stroke();
		
		ctx.beginPath();
		ctx.arc(225,75,60,0, Math.PI*1, false);
		ctx.closePath();
		ctx.stroke();
		
		// type2
		ctx.beginPath();
		ctx.moveTo(75,250);
		ctx.arc(75, 195, 60, 0, Math.PI*1, true);
		ctx.stroke();
		ctx.closePath();
		
		
	</script>
	
</body>
</html>