<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_menu</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#main{
		border: 1px dashed skyblue;
		width: 450px;
		height: 50px;
		margin-left: 10px;
		padding-left: 10px;
	}
	body>.show{
		display:inline-block;
		visibility:visible;
		width:40px;
		height:60px;
		border: 1px solid skyblue;
	}
	body>#result1{
		margin-left:20px;
	}
	#main>button{
		width:80px;
	}
</style>
</head>
<body>
<h3>메인 메뉴를 클릭할시 하위메뉴가 애니메이션 효과와 함께 보여지거나 사라지게 작업해라</h3>

<div id='main'>
	<button id='btn1'>버튼1</button>
	<button id='btn2'>버튼2</button>
	<button id='btn3'>버튼3</button>
	<button id='btn4'>버튼4</button>
	<button id='btn5'>버튼5</button>
</div>
<ul id='result1' class='show'>
	<li>1</li>
	<li>1</li>
	<li>1</li>
</ul>
<ul id='result2' class='show'>
	<li>1</li>
	<li>1</li>
	<li>1</li>
</ul>
<ul id='result3' class='show'>
	<li>1</li>
	<li>1</li>
	<li>1</li>
</ul>
<ul id='result4' class='show'>
	<li>1</li>
	<li>1</li>
	<li>1</li>
</ul>
<ul id='result5' class='show'>
	<li>1</li>
	<li>1</li>
	<li>1</li>
</ul>
<script>
$(document).ready(function(){
	$('#btn1').click(function(){
		var menu = $('#result1').html()
	});
});
</script>
</body>
</html>