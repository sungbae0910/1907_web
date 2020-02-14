<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transform</title>
<style>
	div{
		border:1px dotted orange;
		width: 600px;
		height: 80px;
		margin: 10px;
	}
	
	#rotate>span{
		padding: 1em;
		position: absolute;
		-webkit-transform-origin: 50% 50%;
		-webkit-transform: rotate(-25deg);
	}
	
	#scale{height:600px;}
	#scale>.a{transform: scale(0.5);}
	#scale>.b{transform: scale(1.3);}
	
	#skew>span{
		position: absolute;
		font-size: 30px;
		transform: skew(10deg, 20deg);
	}
	
	#translate>span{
		position: absolute;
		font-size: 30px;
		transform: translate(100px, 30px);
		
	}
</style>
</head>
<body>

	<h3>transform</h3>
	<ul>
		<li>rotate</li>
		<li>scale</li>
		<li>skew</li>
		<li>translate</li>
	</ul>
	<hr/>
	
	<div id='rotate'>
		<span>회전시키다</span>
	</div>
	<div id='scale'>
		<img src='../images/down.jpg'/>
		<img src='../images/down.jpg' class='a'/>
		<img src='../images/down.jpg' class='b'/>
	</div>
	<div id='skew'>
		<span> 스크류하다</span>
	 </div>
	<div id='translate'> 
		<span> 변형하다</span>
	</div>
	

</body>
</html>