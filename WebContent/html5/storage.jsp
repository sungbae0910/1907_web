<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>storage Test</h3>
	<form name='frm'>
		<output name='mId'></output> 안ㄴㄴ녕!!<br/>
		<input type='button' value='저장' name='btnSave'/>
		<input type='button' value='불러오기' name='btnLoad'/>
	</form>
	 
	<script>
		// localStorage, sessionStorage에 값을 저장한 후 브라우저 종료하여 결과를 조회
		frm.mId.value = localStorage.getItem('mId');
		frm.btnSave.onclick = function(){
			localStorage.setItem('mId', 'hong'); // 클라이언트 컴퓨터에 값이 저장되어 브라우저 종료되어도 값 재사용 가능
			sessionStorage.setItem('mId', 'kim'); // 브라우저 종료하면 값 사라짐
		}
		
		frm.btnLoad.onclick = function(){
			var localId = localStorage.getItem('mId');
			var sessionId = sessionStorage.getItem('mId')
			console.log('localStorage', localId);
			console.log('sessiongStorage', sessionId);
		}
	</script>

</body>
</html>