<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array</title>
</head>
<body>
<h3>JavaScript를 사용한 배열선언</h3>
<p id='info'>
	<ul>
		<li>배열의 길이는 가변적</li>
		<li>배열의 생성방법 1: let a = new Array()</li>
		<li>배열의 생벙방법 2: let a = new ArraY(1,2,3)</li>
		<li>배열의 생성방법 3: let a = []</li>
		<li>배열의 생성방법 4: let a = [1,2,3];</li>
	</ul>
	<ul>
		<li>let a = new Array(); <br/>
			a[0] = new Array();</li>
	</ul>

<script>
	//기본형
	let a = [1,2,3,4,5];
	console.log(a[0]);
	console.log(a);
	
	//Map구조
	let b = {"id":"qwe", "name":"lee", "age":"25"};
	console.log('id', b.id);
	console.log('name', b.name);
	console.log('age', b.age);
	
	//2차원 배열
	let c = [[1,2,3], [4,5,6]];
	console.log('1행 : ', c[0]);
	console.log('2행 : ', c[1]);
	console.log('1행 1열 : ', c[0][0])
	
	//배열안의 map구조
	let d = [1,2,3,{"id":"lee", "score":"60"}, 4,5,6];
	console.log('d[0] ', d[0]);
	console.log('d[4] ', d[4]);
	console.log('d[3].id ', d[3].id);
	console.log('d[3].score ', d[3].score);
	
	//map안에 배열
	let e = {"id":"hong", "score":[50,80,58,56]};
	console.log('e.id : ', e.id);
	console.log('e.score : ', e.score);
	console.log('e.score[0] : ', e.score[0]);
</script>


</body>
</html>