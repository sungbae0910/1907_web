<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_filter</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>filter 사용</h3>
<p id='info'>
	filter는 '요소:필터명' 을 사용하여 선택함.
</p>
<form name='frm'>
	<input type='text' name='mid' value='hong'/><br/>
	<input type='text' name='mName' value='gildong'/><br/>
	<input type='password' name='pwd' value='1234'/><br/>
	<input type='button' value='입력'/>
</form>

<script>
$('input:text').css('color', 'blue');
$('input:password').css('color', 'red');
// 여러 속성들을 지정할때 map구조 형태로 지정해줄 수 있음
$('input:button').css({
	'width':'180px', 'height':'90px'
});
</script>
</body>
</html>