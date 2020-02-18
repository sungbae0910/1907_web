<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>appendTO</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
img{
	width:300px;
	height:200px;
}
</style>
</head>
<body>
<h3>appendTo를 이용하여 이미지의 순서를 2초 주기로 변경</h3>

<img src='../images/blogging-4840790_640.jpg'>
<img src='../images/boy-4838825_640.jpg'>
<img src='../images/easter-4811724_640.jpg'>
<img src='../images/landscape-4637538_640.jpg'>
<img src='../images/sailboat-4777340_640.jpg'>

<script>
$(document).ready(function(){
	let stop = setInterval(function(){
		$('img').first().appendTo('body');
	}, 2000);
	//이미지를 클릭했을때 clearInterval을 사용하여 중지
	$('img').click(function(){
		clearInterval(stop);
	});
});

</script>
</body>
</html>