<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date</title>
</head>
<body>

<h3>date</h3>
<fieldset id='info'>
	생년월일을 입력하여 오늘 날짜를 기준으로 나이, 개월수, 시간수, 분수를 계산하여 표시.
</fieldset>

<form name='frm'>
	<label>생년월일</label>
	<input type="date" name='birth'/><br/>
	
	<label>오늘날자</label>
	<input type="date" name='now'/><br/>
	<input type='button' value='날수계산' name='btn'/>
</form>

<div id='result'></div>

<script>
let r = document.getElementById('result');
	frm.btn.onclick = function(){
		let birth = frm.birth.value;
		let tod = frm.now.value;
		
		let now = new Date(birth);
		let now2 = new Date(tod);
		let cha = now2-now;
		let interval = Math.floor(cha/(1000*60*60*24)); //일
		let year = Math.floor(cha/(1000*60*60*24*30*12));
		let mon = Math.floor(cha/(1000*60*60*24*30)); //월
		let hour = Math.floor(cha/(1000*60*60));
		let minute = Math.floor(cha/(1000*60));
		str = '년 : '+year+'<br/>'+'mon : ' + mon + '<br/>' + 'hour : ' + hour + '<br/>' + 'minute : ' + minute;
		r.innerHTML = str;
	}
</script>
</body>
</html>