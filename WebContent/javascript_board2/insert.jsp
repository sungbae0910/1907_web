<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name='brd'> 
	<label>작성자</label><br/>
	<input type='text' name='mName'/><br/>
	<label>제목</label><br/>
	<input type='text' name='subject'/><br/>
	<label>내용</label><br/>
	<textArea rows='10' cols='70' name='content'></textArea><br/>
<input type='button' value='DB초기화' name='btnInit'/>	
<input type='button' value='입력' name='btnSave'/>
<input type='button' value='목록' name='btnSelect'/>
</form>

<script src='board.js'></script>
</body>
</html>