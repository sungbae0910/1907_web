<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>

<p>
	<ul>
		<li>ol:번호가 있는 순서
		<li>ul:기호가 있는 목록
		<li>dl:번호와 기호가 없는 목록
	</ul>
</p>
<hr/>
<p>
	<h3>Ordered List</h3>
	<ol start='5' type='i'>
		<li>a</li>
		<li>b</li>
		<li>c</li>
	</ol>
	
	<ol type='A'>
		<li>ddd</li>
	</ol>
</p>
<hr/>
<p>
	<h3>Definition List</h3>
	<dl>
		<dt>제목</dt>
		<dd>내용</dd>
	</dl>
</p>
<hr/>
<div>
	<h3>Unordered List</h3>
		<ul type='circle'>
			<li>동그라미</li>
			<li>동글뱅이</li>
		</ul>
</div>
<input type='file'>

</body>
</html>