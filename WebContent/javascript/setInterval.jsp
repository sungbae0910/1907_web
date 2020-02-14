<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setInterval</title>
<style>
	#watch{
		width:260px;
		border: 1px solid blue;
		border-radius: 10px 10px 10px 10px;
		padding: 10px;
		font-weight: bold;
	}
</style>
</head>
<body>

	<h3>setInterval을 사용한 시계</h3>
	<div id='watch'></div>
	<script>
	let watch = document.getElementById('watch');
	let weeks = ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일'];
	
	let func = function(){
		let now = new Date();
		let year = now.getFullYear();
		let month = now.getMonth()+1; //0~11월
		let day = now.getDate();
		let week = now.getDay(); //요일
		let hour = now.getHours();
		let min = now.getMinutes();
		let sec = now.getSeconds();
		
		if(hour<10){hour = '0'+min;}
		if(min<10){min = '0'+min;}
		if(sec<10){sec = '0'+sec;}
		
		let str = `\${year}년 \${month}월 \${day}일 (\${weeks[week]})`;
		str += `\${hour}:\${min}:\${sec}`;

		watch.innerHTML = str;
	}
	setInterval(func, 1000);
	</script>
</body>
</html>