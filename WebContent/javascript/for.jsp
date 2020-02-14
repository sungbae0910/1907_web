<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for</title>
<style>
	#result{
		width: 200px;
		height: 100px;
		border: 1px solid blue;
		border-radius: 5px 5px 5px 5px;
		margin: 10px;
		margin-left: 10px;
	}
	
	#result{
		padding: 10px;
		text-align: center;
	}
</style>
</head>
<body>

	<h3>for문 첫번째 문제</h3>
	<p id='info'>
		1이상의 정수 n을 입력받아 1~n까지의 합계를 구하여 div영역에 표시		
	</p>
	
	<form name='frm'>
		<label>정수</label>
		<input type='text' name='ex'/>
		<input type='button' name='btn' value='벗튼'/>
	</form>

		<div id='result'></div>
		
		<script>
			frm.btn.onclick = function(){
				let ex = Number(frm.ex.value);
				let r = 0;
				for(i=1; i<=ex; i++){
					r += i;					
				}
				document.getElementById('result').innerHTML = '합계 : ' + r;
			}
		</script>
</body>
</html>