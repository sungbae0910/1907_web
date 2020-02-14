<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dialog</title>
</head>
<body>
	<form name='frm'>
		<input type='button' value='alert' name='btnAlert'/>
		<input type='button' value='confirm' name='btnConfirm'/>
		<input type='button' value='prompt' name='btnPrompt'/>
	</form>
	
	<script>
		frm.btnAlert.onclick = function(){
			alert("OK");
		}
		frm.btnConfirm.onclick = function(){
			let flag = confirm("실행하시겠습니까?");
			if(flag){
				console.log('confirm', '실행합니다...');
			}else{
				console.log('confirm', '실행을 중지합니다...');
			}
		}
			
		frm.btnPrompt.onclick = function(){
			let v = Number(prompt('숫자를 입력하세요.'));
			let r = v+v;
			console.log('입력값 : ' + r);
		}
	</script>
</body>
</html>