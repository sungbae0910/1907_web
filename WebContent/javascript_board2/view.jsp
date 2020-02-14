<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name='brd_view'>
	<label>순번</label><br/>
	<input type='text' name='serial' readonly/>조회수<input type='text' name='hit' readonly id='hit'/><br/>
	<label>작성자</label><br/>
	<input type='text' name='mName' readonly/><br/>
	<label>제목</label><br/>
	<input type='text' name='subject' readonly/><br/>
	<label>내용</label>
	<div id='con'></div><br/>
<input type='button' value='수정' name='btnModify'/>
<input type='button' value='삭제' name='btnDelete'/>
<input type='button' value='목록' name='btnSelect'/>
</form>

<script>
	let serial = localStorage.getItem('serial');
	let content = document.getElementById('content');
	loadDB();
	
	ofr(data of db){
		if(data.serial == serial){
			brd.serial.value=data.serial;
			brd.mName.value = data.mName;
			brd.subject.value = data.subject;
			brd.hit.value=data.hit;
			let temp = data.content.replace(/\n/gi, '<br/>') // 엔터키를 br로 바꾸어서 content영역에 나타냄
			content.innerHTML = temp;
		}
	}
	
</script>
</body>
</html>