<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch
</title>
<style>
	#result{
		border: 1px solid blue;
		width: 300px;
		height: 150px;
		font-weight: bold;
		word-break: break-all;
	}
</style>
</head>
<body>

	<h3>switch</h3>
	<p id='info'>
	prompt를 이용하여 정수 하나를 입력받아 짝수, 홀수를 구분하여 출력하고, 만약 숫자가 아니라면 '숫자를 입력하세요' 메시지를 div창에 출력
	</p>
	<div id='result'></div>
	
	<script>
		let pmp = Number(prompt('숫자(정수)를 입력하세요'));
		let r = document.getElementById('result');
		
		switch(pmp%2){
		case 0:
			r.innerHTML = '입력한 ' + pmp + '은 짝수입니당';
			break;
		case 1:
			r.innerHTML = '입력한 ' + pmp + '은 홀수입니당';
			break;
		default:
			r.innerHTML = '숫자(정수)만 입력했는지 확인해주세요.';
			break;
			}
	</script>
</body>
</html>