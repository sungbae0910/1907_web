<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number</title>
<style>
	form[name=frm]{
		position : relative;
	}
	
	input[type=button]{
		position: absolute;
		top: 4px;
		left: 220px;
		width: 80px;
		height: 40px;
	}
	
	.rst{
		border: 1px solid blue;
		border-radius: 10px 10px 10px 10px;
		padding: 20px;
		font-weight: bold;
		font-size: 25px;
	}
</style>
</head>

<body>
	<h3>Number, parseInt, parseFloat</h3>
	<form name='frm'>
		<label>성명</label>
		<input type='text' name='irum' value='hong'/>
		<br/>
		<label>성적</label>
		<input type='text' name='score' value='50'/>
		<br/>
		<input type='button' value='check' name='btn'/>
		<br/>
		<textarea rows='10' cols='50' name='result' class='rst'></textarea>
	</form>
	
	<script>
		frm.btn.onclick = function(){
			let flag = false;
			let n = frm.irum.value;
			let s = frm.score.value;
			frm.result.value = '';
			
			//이름에 숫자가 있는지를 판별
			for(i=0; i<n.length; i++){
				var c = n.charAt(i);
				if(isFinite(c)){
					flag = true;
					break;
				}
			}
			if(flag){
				frm.result.value='이름이 숫자가 있으면 안됨!';
				frm.irum.select();
			}
			
			//성적에 문자가 있는지 체크
			if(!isFinite(s)){
				frm.result.value='성적에 문자가 있음';
				frm.score.focus();
				frm.score.select();
				flag=true;
			}
			
			if(!flag){
				frm.result.value = `성명 : \${n} \n성적 : \${s} `;
			}
		}
	</script>
</body>

</html>