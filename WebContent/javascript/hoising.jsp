<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>호이지잉</h3>
	변수나 함수를 선언하기전에 사용가능하도록 메모리에 미리 상주시킨다는 의미다.
	
	<script>
		//변수의 hoising
		irum = 'hong';
		var irum;
		console.log(irum);
		
		let age = 0; //사용전에 반드시 선언해야 됨
		age = 18;
		console.log(age);
		
		a();
		
		function a(){
			console.log('hoising된 함수');
		}

		
		f(); // not defined
		f = function(){
			console.log('hoising 되지 않은 함수');
		}
	</script>
</body>
</html>