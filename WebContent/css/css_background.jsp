<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_background</title>
<style>
	div{
		width :  250px;
		height : 200px;
		margin : 20px;
		display : inline-block;
		border : 1px dashed orange;
	}
	
	#div1{
		overflow: auto; /* 스크롤바 생성 */
		background-image: url(../images/down.jpg);
		background-attachment: scroll; /* 안먹음;; */
	}
	
	#div2{
		background-image:url(../images/tri.jpg);
		background-repeat: no-repeat;
		background-position: 10px 10px;
	}
	
	#div3{
		background-image: url("../images/aa.jpg");
		background-repeat: repeat-y;
	}
	
	#div5{
		background-image: url("../images/down.jpg");
		background-size: 100% 100%;
	}
</style>
</head>
<body>

	<h3>바탕 이미지</h3>
	<ul>
		<li>background-image : url</li>
		<li>background-attachement :  fixed | scroll</li>
		<li>background-position : x y | center | left | right | bottom | top</li>
		<li>background-repeat :  no-repeat | repeat-x | repeat-y </li>
		<li>background-size : sizeX | sizeY </li>
	</ul>
	<hr/>
	<div id='div1'>
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
		엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ엄청많은내용이다아ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
	</div>
	<div id='div2'></div>
	<div id='div3'></div>
	<div id='div4'></div>
	<div id='div5'></div>

</body>
</html>