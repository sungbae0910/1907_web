<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_javascript</title>
<style>
	#div1{
		height:100px;
		border:2px dashed #000000;
	}
</style>
</head>
<body>
	<h3>css를 javascript로 제어</h3>
	<p>
		구조 => 요소명.style.css속성명 = '속성값';
	</p>
	<div id='div1'>
	</div>
	<input type='button' value='red' id='btnRed'/>
	<input type='button' value='blue' id='btnBlue'/>
	<input type='button' value='green' id='btnGreen'/>
	
	<script>
		let btnR = document.getElementById('btnRed');
		let btnG = document.getElementById('btnGreen');
		let btnB = document.getElementById('btnBlue');
		let div = document.getElementById('div1');
		btnR.onclick = function(){
			div.style.backgroundColor='red';
		}
		
		btnG.onclick = function(){
			div.style.backgroundColor='green';
		}
		
		btnB.onclick = function(){
			div.style.backgroundColor='orange';			
		}
	</script>
</body>
</html>