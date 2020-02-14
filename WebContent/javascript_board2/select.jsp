<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시판 목록</h3>
<div id='brd_select'>
	<form name='brd'>
		<input type='button' value='입력' name='btnInsert'/>
		<input type='text' name='findStr' id='findStr'/>
		<input type='button' value='검색' name='btnSearch' id='btnSearch'/>
	</form>
	<div id='title'>
		<span class='serial'>No</span>
		<span class='tit'>Title</span>
		<span class='writer'>Writer</span>
		<span class='mDate'>Date</span>
		<span class='readCnt'>ReadCount</span>
	</div>
	<div id='list'></div>
</div>
<script src='board.js'></script>
<script>
	brd.btnSearch.click(); // 입력상자에서 목록으로 넘어갈때 목록을 띄우기 위해서 클릭이벤트 발생시킴   
</script>
</body>
</html>