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
	<input type='text' name='serial' readonly/><br/>
	<label>작성자</label><br/>
	<input type='text' name='wirter' readonly/><br/>
	<label>제목</label><br/>
	<input type='text' name='title' readonly/><br/>
	<label>내용</label>
	<div id='con'></div><br/>
<input type='button' value='수정' name='btnIn'/>
<input type='button' value='삭제' name='btnDe'/>
<input type='button' value='목록' name='btnLi'/>
</form>

<script>
	let cv = localStorage.getItem('cntValue')
	let load = localStorage.getItem(cv);
	let r = document.getElementById('con');
	if(load != null){
		let l = JSON.parse(load);
		brd_view.serial.value = l.cnt;
		brd_view.wirter.value = l.writer;
		brd_view.title.value = l.title;
		r.innerHTML = l.content;
	}
	
	brd_view.btnDe.onclick = function(){
		localStorage.removeItem('cnt1');
		brd_view.serial.value = '';
		brd_view.wirter.value = '';
		brd_view.title.value = '';
		r.innerHTML = '';
	}

</script>
</body>
</html>