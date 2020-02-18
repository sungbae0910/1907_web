<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>배열사용</h3>
<p id='info'>
	<li>$.each(object, function(index, item){...})</li>
	<li>$(selector).each(function(index, item){...})</li>
</p>
<script>
$(document).ready(function(){
	let array1 = [12,31,3,214,124,214,1,412,421,56,7];
	let array2 = [
			{name:'hong', age:18, score:90},
			{name:'lee', age:20, score:80},
			{name:'kim', age:22, score:95},
			{name:'choi', age:24, score:70},
			{name:'jang', age:26, score:69}
		];
	
	//array1에서 400보다 큰수
	$(array1).each(function(index, item){
		if(item>400){
			console.log(index + ' : ' + item);
		}
	});
	
	$(array2).each(function(index, item){
		if(item.score>=80){
			console.log(item.name+' : ' + item.age + ' : '+item.score);
		}
	});
	
});
</script>
</body>
</html>