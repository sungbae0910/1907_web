<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare_3</title>
</head>
<body>

<h3>arguments</h3>
<p id='info'>
	자바스크립트는 메소드의 중복선언을 하지 못하지만, 매개변수의 수를 가변적으로 사용함으로써 오버로딩을 구현함
</p>

<script>
	function func(a,b,c){
		console.log('a',a);
		console.log('b',b);
		console.log('c',c);
		console.log('------------');
	}
	
	func();
	func(1);
	func(1,2,3);
	func(1,2);
	func(1,2,3,4);
	
	//arguments : parameter값을 배열로 저장하고 있는 객체
	function my(){
		console.log('-----arguments test----------');
		for(x of arguments){
			console.log(x);
		}
	}
	
	my('a');
	my(123,456);
	my('a',123,'가나다');
</script>
	
</body>
</html>