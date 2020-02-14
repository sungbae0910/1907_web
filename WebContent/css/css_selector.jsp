<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector</title>
<style>
	#div1 span:first-child{color: red}
	#div2 span:first-of-type{color: red}
	
	#div1 span:last-child{color: blue;} /* div1 마지막자식이 span이면 적용시켜라 */
	#div2 span:last-of-type{color: blue;} /* div2 안에 있는 span태그 마지막에 적용시켜라 */
	
	#div3 li:nth-child(2n) {color: red;}
	#div3 li:nth-child(2n-1) {color: orange;}
	
	#div4 div:nth-child(2n) {background-color: #ccff;}
	
	#div5 span{
		border: 1px dotted black;
		background-color: #eee;
		float: left;
		padding: 5px;
	}
	
	#div5 span:first-child {
		border-radius: 10px 0 0 10px;
	}
	
	#div5 span:last-child {
		border-radius: 0px 10px 10px 0px;
	}
	
	#div5 span:hover{
		background-color: #bbb;
		transition: background 2s;	
	}
</style>
</head>
<body>
	<div id='div1'>
		<label>label</label>
		<span>span 1</span>
		<span>span 2</span>
		<span>span 3</span>
		<label>label</label>
	</div>

	<div id='div2'>
		<label>label</label>
		<span>span 1</span>
		<span>span 2</span>
		<span>span 3</span>
		<label>label</label>
	</div>	
	
	<div id='div3'>
		<ul>
			<li>강원도</li>
			<li>경기도</li>
			<li>충정도</li>
			<li>전라도</li>
			<li>경상도</li>
			<li>제주도</li>
		</ul>
	</div>	
	
	<div id='div4'>
		<div>제목1............</div>
		<div>제목2............</div>
		<div>제목3............</div>
		<div>제목4............</div>
		<div>제목5............</div>
		<div>제목6............</div>
		<div>제목7............</div>
		<div>제목8............</div>
		<div>제목9............</div>
		<div>제목10............</div>
	</div><br/><br/>
	
	<div id='div5'>
		<span>강원도</span>
		<span>경기도</span>
		<span>충청도</span>
		<span>전라도</span>
		<span>경상도</span>
		<span>제주도</span>
	</div>
	
</body>
</html>