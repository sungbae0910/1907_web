<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>radius</title>
<style>
div{
	width:200px;
	height:200px;
	border:2px solid skyblue;
	margin:10px;
	float:left;
	}
	
#div1{
	overflow:auto;	
}

#div2{
	border-radius: 50px;
	box-shadow: 3px 3px 5px blue;
}

#div3{
	border-radius: 100px;
	box-shadow: 3px 3px 5px orange;
}

#div4{
	border-top-left-radius: 50px;
	box-shadow: 3px 3px 5px pink;
}

#div5{
	border-top-right-radius: 50px;
	box-shadow: -3px -3px 5px red;
}

#div6{
	border-radius:50px 0 50px 0;
	box-shadow: 3px -3px 5px black;
}
</style>
</head>
<body>
	<div id='div1'>가나다라마바사 abcderfewqe 가나다라마바사 abcderfewqe 가나다라마바사 abcderfewqe가나다라마바사 abcderfewqe 가나다라마바사 abcderfewqe가나다라마바사 abcderfewqe 가나다라마바사 abcderfewqe 가나다라마바사 abcderfewqe</div>
	<div id='div2'></div>
	<div id='div3'></div>
	
	<div id='div4'></div>
	<div id='div5'></div>
	<div id='div6'></div>
	
</body>
</html>