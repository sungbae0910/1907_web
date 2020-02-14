<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_font</title>
<style>
#font_size #px{
	font-size : 30px;
}
#font_size #em{
	font-size : 2em;
}
#font_size #per{
	font-size : 300%;
}
#Line_height{
	border:1px solid blue;
	padding:10px;
	box-sizing:border-box;
	width:200px;
	line-height:300%;
}

#text_overflow>div{
	border : 1px solid orange;
	width : 200px;
	margin-top:10px;
	white-space : nowrap;
}
#text_overflow>#div1{
	text-overflow : ellipsis;
	overflow : hidden;
}
#text_overflow>#div2{
	text-overflow : clip;
	overflow : hidden;
}
#text_overflow>#div3{
	overflow : auto;
}
#text_overflow>#div5{
	white-space : normal;
}
#text_shadow{
	background-color : black;
	color : white;
	font-size : 2em;
	font-weight : bold;
	text-shadow : 3px 3px 6px orange;
}
</style>
</head>
<body>

	<div id='font_size'>
		<div>기본크기 ㅎ</div>
		<div id='px'>px 123 가나다 abc</div>
		<div id='em'>em 123 가나다 abc</div>
		<div id='per'>% 123 가나다 abc</div>
	</div>
	
	<div id='Line_height'>
		테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다
		테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다
		테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다테스트다
	</div>

	<div id='text_overflow'>
		<h2>text-overflow:ellipsis</h2>
		<div id='div1'>매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다</div>
		<h2>text-overflow:clip</h2>
		<div id='div2'>매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다</div>
		<h2>overflow:auto</h2>
		<div id='div3'>매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다</div>
		<h2>아무것도</h2>
		<div id='div4'>매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다</div>
		<h2>white-space : normal</h2>
		<div id='div5'>매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다매우길다</div>
	</div>
	
	<div id='text_shadow'>
		1907 화이이잍잍잍ㅌ팅
	</div>
</body>
</html>