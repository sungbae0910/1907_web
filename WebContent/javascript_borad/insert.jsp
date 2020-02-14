<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<form name='brdIn'> 
	<label>작성자</label><br/>
	<input type='text' name='writer'/><br/>
	<label>제목</label><br/>
	<input type='text' name='title'/><br/>
	<label>내용</label><br/>
	<textArea rows='10' cols='70' name='con'></textArea><br/>
<input type='button' value='입력' name='btnIn'/>
</form>

<script>
	brdIn.btnIn.onclick=function(){
		let num = localStorage.getItem('num');
		let cnt = num; //순번
		let now = new Date();
		let wr_date = now.getFullYear(); //작성일
		let writer = brdIn.writer.value; // 작성자
		let title = brdIn.title.value; //글제목
		let content = brdIn.con.value; //글 내용
		let rc = 0; //조회수
		
		let j = new Json(++cnt,wr_date,writer,title,content,rc);
		let js = JSON.stringify(j);
		localStorage.setItem('cnt'+cnt, js);
		localStorage.setItem('num', cnt);
	}
	
	function Json(cnt,wr_date,writer,title,content,rc){
		this.cnt=cnt;
		this.wr_date=wr_date;
		this.writer=writer;
		this.title=title;
		this.content=content;
		this.rc=rc;
		
		this.toJSON = function(){
			let str = {"cnt":this.cnt, "wr_date":this.wr_date, "writer":this.writer, "title":this.title, "content":this.content, "rc":this.rc};
			return str;
		}
	}

</script>
</body>
</html>