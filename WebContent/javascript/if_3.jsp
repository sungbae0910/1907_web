<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_3</title>
<style>
	#info{
		border: 1px solid skyblue;
	}
	
</style>
</head>
<body>

	<h3>if_3</h3>
	<p id='info'>
		키와 몸무게를 입력받아 키가 120미만이거나 몸무게가 100kg이상이면 라디오 버튼 중 탑승불가 버튼 체크 아니면 탑승가능 버튼이 체크되도록
	</p>
	
	<form name='frm'>
		<input type='text' name='k'/><br/>
		<input type='text' name='m'/>
		<input type='button' name='btn' value='체크'/>
		<hr/>
		<label><input type='radio' value='불가' name='ck'/>탑승불가</label>
		<label><input type='radio' value='가능' name='ck'/>탑승가능</label>
	</form> 

	<script>
		frm.btn.onclick = function(){
				let k = frm.k.value;
				let m = frm.m.value;
				if(k<120 || m>=100){
					frm.ck[0].checked = true;
				}else{
					frm.ck[1].checked = true;
				}
		}
	</script>
</body>
</html>