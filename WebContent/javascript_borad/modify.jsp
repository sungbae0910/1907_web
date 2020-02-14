<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name='brdmodi'>
	<label>순번</label><br/>
	<input type='text' name='serial' readonly/><br/>
	<label>작성자</label><br/>
	<input type='text' name='writer' readonly/><br/>
	<label>제목</label><br/>
	<input type='text' name='title'/><br/>
	<label>내용</label><br/>
	<textArea rows='10' cols='70' name='con'></textArea><br/>
<input type='button' value='수정' name='btnSave'/>
<input type='button' value='목록' name='btnSelect'/>
</form>

<script>
	let d = localStorage.getItem('cnt2');
	let a = JSON.parse(d);
	if(d!=null){
		brdmodi.serial.value = a.cnt;
		brdmodi.writer.value = a.writer;
		brdmodi.title.value = a.title;
		brdmodi.con.value = a.content;
	}
	
	brdmodi.btnSave.onclick = function(){
		let now = new Date();
		let wr_date = now.getFullYear(); //작성일
		let writer = brdmodi.writer.value; // 작성자
		let title = brdmodi.title.value; //글제목
		let content = brdmodi.con.value; //글 내용
		let cnt = a.cnt
		let rc = a.rc; //조회수
		
		let j = new Json(cnt, wr_date, writer, title, content, rc);
		let js = JSON.stringify(j);
		localStorage.setItem('cnt2', js);
		
		brdmodi.serial.value = '';
		brdmodi.writer.value = '';
		brdmodi.title.value = '';
		brdmodi.con.value = '';
	}
	
	function Json(cnt,wr_date,writer,title,content,rc){
		this.cnt=cnt;
		this.wr_date=wr_date;
		this.writer=writer;
		this.title=title;
		this.content=content;
		this.rc=rc;
	}
</script>
</body>
</html>