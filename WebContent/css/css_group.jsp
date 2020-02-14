<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_group</title>
<style>
	div#abc{
		color :  red;
	}
	
	div#def, div.def{
		color : white;
		background-color : #ccccff;
	}
	
	div.abc{
		color : blue;
	}
	
	span[abc]{
		color:white;
		background-color:#ccccff;
	}
	
	div#child>span{
		color:white;
		background-color:#ccccff;
	}
	
	div#desc span{
		color:white;
		background-color:#ccccff;
	}
	
	div#plus span+span{
		color : red;
	}
</style>
</head>

<body>
	<h3>태그명#</h3>
	<div id='abc'>id=abc</div>
	<div id='def'>id=def</div>

	<h3>태그명.</h3>
	<div class='abc'>class=abc</div>
	<div class='def'>calss=def</div>
	
	<h3>태그명[속성]</h3>
	<span abc='1'>abc=1</span><br/>
	<span def='1'>def=1</span>
	
	<h3>태그명>태그명(자손)</h3>
	<div id='child'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
	<h3>태그명 태그명(자손)</h3>
	<div id='desc'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
	<h3>태그명+태그명</h3>
	<div id='plus'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</p>
	</div>
	
</body>
</html>