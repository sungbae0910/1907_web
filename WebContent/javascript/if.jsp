<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if</title>
<style>
	#info{
		border:2px solid #0000ff;
		padding: 20px;
		box-sizing: border-box;
		border-left-width: 30px;
	}
	
	form{
		margin-left: 30px;
	}
	
	#result{
		width: 250px;
		height: 150px;
	}
</style>
</head>
<body>

	<h3>If</h3>
	<p id='info'>
	정수하나를 폼으로 전달받아 60이상이면 '합격'을 60미만이면 '불합격'
	</p>
	
	<form name='frm' method='post' action=''>
	<label>정수</label>
	<input type='text' name='su'/>
	<input type='button' value='확인' name='btn'/>
	</p>
	<textarea id='result' name='result'></textarea>
	</form>

	<script>
		frm.btn.onclick= function (){
			let su = Number(frm.su.value); //Number: 정수형으로 변환해줌
			if(su>=60){
				frm.result.value = '합격';
			}else{
				frm.result.value = '불합격';
			}
		}
	</script>
</body>
</html>