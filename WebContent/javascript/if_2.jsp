<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_2</title>
<style>
	#info{
		border: 1px solid orange;
	}
</style>
</head>
<body>

	<h3>if 2번째문제</h3>
	<p id='info'>
		정수 하나를 입력받아 90이상이면 '전액 장학생', 70이상이면 '반액 장학생', 70미만이면 '전액 납부'가 있는 라디오 버튼의 상태값 변경 
	</p>
	
	<form name='frm'>
	<input type='text' name='su'/>
	<input type='button' value='확인하기' name='ck'/>
	<hr/>
	<label><input type='radio' value='전액' name='radi'/>전액</label>
	<label><input type='radio' value='반액' name='radi'/>반액</label>
	<label><input type='radio' value='전부' name='radi'/>전부</label>
	</form>
	
	<script>
		frm.ck.onclick = function(){
			let su = frm.su.value;
			if(su>100 || su<0){
				alert('숫자는 0~100점까지만 입력해주세요!!')
			}else{
				if(su>=90){
					frm.radi[0].checked = true;
				}else if(su>=70){
					frm.radi[1].checked = true;
				}else{
					frm.radi[2].checked = true;
				}
			}
		}
	</script>
</body>
</html>