<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function declare</title>
</head>
<body>

	<h3>function declare</h3>
	<script>
		var f = function(){ //익명함수
			return 'hong';
		} 
		
		var f2 = function(a){
			return 'return value : ' + a;
		}
		
		console.log(f());
		console.log(f2('lee'));
	</script>
	
	<h4 id='h4'>callback 함수</h4>
	<script>
		let h4 = document.getElementById('h4');
		
		h4.onmouseover = abc; 
			
		function abc(){
			console.log('마우스 올라감');
		}
	</script>
	
	<h4>선언적 함수(기본적으로 hoising됨)</h4>
	<script>
		hoi('asdas123');
		function hoi(n){
			console.log('n');
		}
		hoi('asdas123');
	</script>
	
	<h4>함수적 선언(not hoising)</h4>
	<script>
		let ff = function func(){
			console.log('에베베베베벱베');
		}
		ff();
	</script>
	
	<h4>즉시실행</h4>
	<script>
		(function(){console.log('즉시실행ㅎㅎㅎㅎㅎㅎㅎㅎㅎ');
			}()
		);
	</script>
	
	<h4>화살표 함수</h4>
	<script>
		//function func2(a,b){return a+b};
		let func2 = (a,b) => {return a+b};
		console.log(func2(10,20));		
	</script>
	
</body>
</html>