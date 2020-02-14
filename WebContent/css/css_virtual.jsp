<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_virtual</title>
<style>
	a{
		text-decoration : none;
	}
	a:hover{
		text-decoration : underline;
		font-weight :  bold;
	}
	a:link{
		color:red;
	}
	a:visited{
		color:gray;
	}
	a:active{
		color: orange;
	}
	input[type]:focus{
		color : orange;
		background-color : gray;
	}
	input[type]:blur{
		color : black;
	}
	
	
</style>
</head>
<body>

	<h3>가상 클래스</h3>
	
	<p>
		<ul>
			<li> :link => 링크의 초기상태</li>
			<li> :visited => 방문했던 링크</li>
			<li> :active => 링크를 클릭한 상태</li>
			<li> :hover => 마우스를 올려놓은 상태</li>
			<li> :focus => 커서가 위치하고 있는 상태</li>
			<li> :blur => 커서가 해당위치를 벗어났을 때</li>
		</ul>
	</p>
	
	<h3> :link | :visited | :active | :hover</h3>
	<a href='http://jobtc.kr'>카페</a>
	<a href='http://www.naver.com'>방문전</a>
	
	<h3>:focus | :blur</h3>
	<input type='text' value='hong'/>
	<input type='text' value='dmfick'/>

</body>
</html>