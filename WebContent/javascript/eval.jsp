<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eval</title>
<style>
	textarea{
		border: 1px solid blue;
		border-radius: 10px 10px 10px 10px;
		margin: 10px;
		padding: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>
<h3>eval</h3>
<p id='info'>
	eval()을 사용한 간단 계산기
</p>

<form name='frm'>
	<label>연산식</label>
	<input type='text' size='10' name='oper'/>
	<input type='button' value='연산하기' name='btn'/>
	<br/>
	<textarea rows='10' cols='60' name='result'></textarea>
</form>

<script>
	let func = function(){
		let r = eval(frm.oper.value); //eval()함수가 자동으로 계산을 수행해줌(문자열을 코드로 인식하기 때문)
		frm.result.value += frm.oper.value+'\n='+r + '\n ---------\n';
	}
	frm.btn.onclick = func;
</script>


</body>
</html>