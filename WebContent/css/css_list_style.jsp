<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#ul2{
		list-style-image: url("../images/icon.jpg");
	}
	#ul3{
		list-style-image: url("../images/icons.jpg");
		list-style-position: inside;
	}
</style>
</head>
<body>

	<ul id='ul1'>
		<li>list-style-image:url(path)</li>
		<li>list_style-position : inside | outside</li>
	</ul>
	<hr/>
	<ul id='ul2'>
		<li>산</li>
		<li>소산</li>
		<li>중산</li>
		<li>대산</li>
		<li>마산</li>
	</ul>
	<hr/>
	<ul id='ul3'>
		<li>산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산
			산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산
			산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산산
		</li>
		<li>소산</li>
		<li>야산</li>
		<li>오산</li>
		<li>마산</li>
	</ul>

</body>
</html>