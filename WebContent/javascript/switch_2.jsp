<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch_2
</title>
<style>
	#result{
		border: 1px solid blue;
		font-weight: bold;
		weight: 300px;
		height: 200px;
	}
</style>
</head>
<body>
	<h3>switch_2</h3>
	<p id='info'>
		성적을 입력받아 학점을 구하여 성적과 학점을 div에 출력	
	</p>
	<form name='frm'>
		<label>성적</label>
		<input type='text' name='score'/>
		<input type='button' value='학점구하기' name='btn'/>
	</form>
	<div id='result'></div>
	
	<script>
		frm.btn.onclick = function(){
			let sco = Number(frm.score.value);
			let r = document.getElementById('result');
			
			switch(true){
			case sco>=90:
				r.innerHTML = '성적'+sco+'은(는) A학점입니다.';
				break;
			case sco>=80:
				r.innerHTML = '성적'+sco+'은(는) B학점입니다.';
				break;
			case sco>=70:
				r.innerHTML = '성적'+sco+'은(는) C학점입니다.';
				break;
			case sco>=60:
				r.innerHTML = '성적'+sco+'은(는) d학점입니다.';
				break;	
			default:
				r.innerHTML = '성적이 박살났습니다.';
				break;
				}
				
				// 첫번째 방법
				(sco>=60) ? r.style.backgroundColor='blue' : r.style.backgroundColor='red';
				// 두번째 방법
				/* let color = (sco>=60) ? '#ddddff' : 'ffdddd';
				r.style.backgroundColor = color; */
			}
	</script>
</body>
</html>