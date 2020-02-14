<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_position</title>
<style>
	div[id]{
		border:2px solid skyblue;
		height: 50px;
	}
	
	#absolute>div{
		position:absolute;
	}
	
	#absolute>div:hover{
		background-color: orange;
		color: white;
		top: 15px;
	}
	
	#absolute>.c1{left:100px;}
	#absolute>.c2{left:200px;}
	#absolute>.c3{left:300px;}
	#absolute>.c4{left:400px;}
	#absolute>.c5{left:500px;}
	
	#relative>div{
		position: relative;
	}
	#relative>.c2{left:100px;}
	#relative>.c3{left:200px;}
	#relative>.c4{left:300px;}
	#relative>.c5{left:400px;}
	
	#fixed{
		position: fixed;
		width: 100px;
		height: 150px;
		background-color: orange;
		color: white;
		opacity: 0.8;
	}
	
	#fixed:hover{
		opacity: 1.0;
	}
</style>
</head>
<body>
	<h3>absolute</h3>
	<div id='absolute'>
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div>
	
	<h3>relative</h3>
	<div id='relative'>
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<h3>fixed</h3>
	<div id='fixed'>
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div>
	
	
	Structure
A:
You label this book.
You shall label all samples.
You shall properly label all samples.
All samples shall be properly labeled (by you).

B:
Exercise ensures my health.
I exercise in order to ensure my health.
I exercise in order to ensure that I can be healthy.

C = A + B:
All samples shall be properly labeled in order to ensure that S + V.

D:
We can trace the results.
We can trace the results back to the location.
The results can be traced back to the location.

E:
You collected it from the location.
It was collected from the location.

F = D + E
The results can be traced back to the location from which it was collected from the location.
= The results can be traced back to the location which it was collected from the location.
= The results can be traced back to the location where it was collected from the location.

G = C + F
All samples shall be properly labeled in order to ensure that the results can be traced back to the location from which it was collected.

Structure
A:
You label this book.
You shall label all samples.
You shall properly label all samples.
All samples shall be properly labeled (by you).

B:
Exercise ensures my health.
I exercise in order to ensure my health.
I exercise in order to ensure that I can be healthy.

C = A + B:
All samples shall be properly labeled in order to ensure that S + V.

D:
We can trace the results.
We can trace the results back to the location.
The results can be traced back to the location.

E:
You collected it from the location.
It was collected from the location.

F = D + E
The results can be traced back to the location from which it was collected from the location.
= The results can be traced back to the location which it was collected from the location.
= The results can be traced back to the location where it was collected from the location.

G = C + F
All samples shall be properly labeled in order to ensure that the results can be traced back to the location from which it was collected.

Structure
A:
You label this book.
You shall label all samples.
You shall properly label all samples.
All samples shall be properly labeled (by you).

B:
Exercise ensures my health.
I exercise in order to ensure my health.
I exercise in order to ensure that I can be healthy.

C = A + B:
All samples shall be properly labeled in order to ensure that S + V.

D:
We can trace the results.
We can trace the results back to the location.
The results can be traced back to the location.

E:
You collected it from the location.
It was collected from the location.

F = D + E
The results can be traced back to the location from which it was collected from the location.
= The results can be traced back to the location which it was collected from the location.
= The results can be traced back to the location where it was collected from the location.

G = C + F
All samples shall be properly labeled in order to ensure that the results can be traced back to the location from which it was collected.

Structure
A:
You label this book.
You shall label all samples.
You shall properly label all samples.
All samples shall be properly labeled (by you).

B:
Exercise ensures my health.
I exercise in order to ensure my health.
I exercise in order to ensure that I can be healthy.

C = A + B:
All samples shall be properly labeled in order to ensure that S + V.

D:
We can trace the results.
We can trace the results back to the location.
The results can be traced back to the location.

E:
You collected it from the location.
It was collected from the location.

F = D + E
The results can be traced back to the location from which it was collected from the location.
= The results can be traced back to the location which it was collected from the location.
= The results can be traced back to the location where it was collected from the location.

G = C + F
All samples shall be properly labeled in order to ensure that the results can be traced back to the location from which it was collected.
</body>
</html>