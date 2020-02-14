<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 입력</title>
<style>
#m_insert{
	padding: 10px;
}
label{
	font-weight: bold;
}
form{
	border: 1px solid skyblue;
	border-radius: 10px 10px 10px 10px;
	padding: 10px;
}
form>input{
	margin-top: 5px;
	margin-bottom: 5px;
}
h3{
	
}

</style>
</head>
<body>

<div id='m_insert' class='m_insert'> <!-- 맨날까먹어 id유일(#으로 컨트롤), class중첩가능(.으로 컨트롤) -->
<h3>회원정보입력</h3>
<form name='m_form' action='abc.jsp' method='post' target=''>
	<label>아이디 </label>&nbsp;&nbsp;
		<input type='text' name='mId'  maxlength='10' placeholder='최대 10글자' /><br/>
	<label>비밀번호 </label>
		<input type='password' name='pwd' size='15' maxlength='10' placeholder='최대 15글자' /><br/>
	<label>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 </label>
		<input type='search' name='mName' size='15'/><br/>
	<label>생년월일 </label>
		<input type='date' name='mBirth'/>
	<label>주민번호 뒷자리</label>
		<input type='text' name='jumin' size='1' maxlength='1'/><br/>
	<label>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별</label><br/>
		<label><input type='radio' name='gender' value='m' checked>남자</label>
		<label><input type='radio' name='gender' value='f'>여자 </label><br/>
	<label>취&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;미</label><br/>
		<label><input type='checkbox' name='hobby' value='축구'/>축구</label>
		<label><input type='checkbox' name='hobby' value='야구'/>야구</label>
		<label><input type='checkbox' name='hobby' value='배구'/>배구</label>
		<label><input type='checkbox' name='hobby' value='농구'/>농구</label><br/>
	<label>좋아하는 컬러</label>
		<input type='color' name='fColor'/><br/>
	<label>주량 </label><br/>
		<input type='range' min='0' max='20000' value='10000'/><br/>
	<label>증명사진</label>
		<input type='file' name='photo' /><br/>
		<img width='180px' height='200px' id='target' src='http://placehold.it/180X200'/><br/>
	<label>자기소개</label><br/>
		<textarea rows='10' cols='60' name='info'/></textarea><br/>
	<label>학년</label>
		<select name='grade'>
			<option value='1'>1학년</option>
			<option value='2'>2학년</option>
			<option value='3'>3학년</option>
			<option value='4'>4학년</option>
			<option value='5'>5학년</option>
			<option value='6'>6학년</option>
		</select><br/>	
	<label>지원과정</label>
	<select name='course'>
		<optgroup label='web'>
			<option value='html'>html5</option>
			<option value='css'>css</option>
			<option value='javascript'>javascript</option>
		</optgroup>
		<optgroup label='framework'>
			<option value='ajax'>ajax</option>
			<option value='mybatis'>mybatis</option>
			<option value='node.js'>node.js</option>
			<option value='spring'>spring</option>
		</optgroup>
	</select><br/>
		<input type='reset' value='초기화'/>
		<input type='button' value='버튼'/>
		<input type='submit' value='전송'/>
</form>
</div>

<script>
	m_form.photo.onchange = function(event){
		let eve = event.srcElement;
		let url = eve.files[0];
		let reader =  new FileReader();
		reader.readAsDataURL(url);
		
		reader.onload = function(ev){
			let img = new Image();
			img.src = ev.target.result;
			document.getElementById('target').src = img.src; 
		}
		
	}
</script>
</body>
</html>