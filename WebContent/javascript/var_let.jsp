<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>var & let</title>
</head>
<body>
	<script>
		for(var i=1; i<=100; i++){} //101출력
			console.log(i);
		
		for(let i=1; i<=100; i++){} // not defined
			console.log(i);
	
		var v1 = 100;
		var v1 = 200; // 유일하게 변수 재선언 가능
		
		//let v2 = 100;
		//let v2 = 200; //변수 재선언 불가능
		
		function a(){
			var irum = 'lee'; //전역 스코프란 의미가 전역변수는 아니다.
		}
		
		function b(){
			alert(irum); // irum is not defined;
		}
		
		a();
		b();
	</script>
</body>
</html>