<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_filter_2</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<form>
	<select>
		<option>사과</option>
		<option>가방</option>
		<option>컵</option>
		<option>강아지</option>
		<option>눈</option>
	</select>
</form>

<script>
	// 선택한 값을 5초뒤에 alert창으로 나타내어주는 로직
	$(document).ready(function(){
		setTimeout(function(){
		var test = $('select>option:selected').val(); 
														
		alert(test);
		}, 5000);
	});
</script>
</body>
</html>