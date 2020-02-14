<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_in</title>
</head>
<body>

	<h3>for_in</h3>
	<p id='info'>
		향상된 for문
	</p>
	<input type='button' value='for-in' id='btnIn'/>
	<input type='button' value='for-off' id='btnOf'/>
	<script>
		let p = document.getElementById('info');
		let btnIn = document.getElementById('btnIn');
		let btnOf = document.getElementById('btnOf');
		
		
		btnIn.onclick = function(){
			console.log('--forIn------------------');
			let array = ['a', 'b', 'c', 'd']
			let cnt = 0;
			for(x in array){
				cnt++;
				console.log(cnt + ': ' + x, array[x]);
			}
		}
		
		btnOf.onclick = function(){
			console.log('--forOf------------------');
			let cnt = 0;
			let array = ['a', 'b', 'c', 'd']
			for(x of array){
				cnt++;
				console.log(cnt + ': ' + x);
			}
		}
		
	</script>
	
</body>
</html>