<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지</title>
</head>
<body>

<h3> 이미지 경로를 절대경로와 상대경로로 불러오기 </h3>

	<img src='/1907-web/images/down.jpg'>절대경로
	<img src='../images/images.jpg'> 상대경로
	
	<h3>이미지사이즈</h3>
	<img src='../images/down.jpg' width='100px'>
	
	<h3>문자와 이미지의 배치</h3>
	<p>
		<img src='../images/down.jpg' align='left' id='a'>
		왼쪽정렬
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</p>
	
	<p>
		<img src='../images/down.jpg' align='right' id='c'>
		오른쪽 정렬 
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</p>
	 
	 <p>
		<img src='../images/down.jpg' align='left' hspace='50px'>
	</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<img src='../images/tri.jpg' usemap='#test'>
	<map name='test'>
		<area shape='rect' coords='0,0,197,73' href='font.jsp' title='상단'>
		<area shape='rect' coords='0,72,197,135' href='anchor.jsp' title='중앙'>
		<area shape='rect' coords='0,134,197,200' href='paragraph.jsp' title='하단'>
	</map>
		
</body>
</html>