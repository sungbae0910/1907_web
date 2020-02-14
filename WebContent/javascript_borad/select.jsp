<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>

<h3>게시판 목록</h3>
<form name='brd'>
	<input type='text' name='findStr'/>
	<input type='button' value='검색' name='btnSearch'/>
</form>
<div id='title'>
	<span class='serial'>No</span>
	<span class='tit'>Title</span>
	<span class='writer'>Writer</span>
	<span class='mDate'>Date</span>
	<span class='readCnt'>ReadCount</span>
</div>
<div id='list'>
	<div class='items'>
		<span class='serial'>1</span>
		<span class='tit'>테스트</span>
		<span class='writer'>마스터</span>
		<span class='mDate'>2020-02-12</span>
		<span class='readCnt'>25</span>
	</div>
</div>

<script>
	let li = document.getElementById('list');
	let a = localStorage.getItem('num');
	let str = '';
	let cnti = '';
	for(i=1; i<=a; i++){
		let b = localStorage.getItem('cnt'+i);
		if(b!=null){
			let abc = JSON.parse(b);
			str += `<div class=items>
					<span class=serial>\${abc.cnt}</span>
					<a href=view.jsp onclick=cntValue(\${abc.cnt})><span class=tit>\${abc.title}</span></a>
					<span class=writer>\${abc.writer}</span>
					<span class=mDate>\${abc.wr_date}</span>
					<span class=readCnt>\${abc.rc}</span>
					</div>`;
			li.innerHTML=str;
		}
	}
	function serialDesc(obj1, obj2){
		return Number(obj2.cnt)-Number(obj1.cnt);		
	}
	
	function cntValue(serial){
		let d = 'cnt'+serial;
		localStorage.setItem('cntValue', d);
	}
</script>
</body>
</html>