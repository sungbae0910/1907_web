<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_of</title>
<style>
	#result{
		border: 1px solid blue;
		width: 300px;
		height: 100px;
		padding: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>

	<h3>forOf</h3>
	<p id='info'>
		배열의 정수를 임의의 개수를 저장한 후 for of를 사용하여 최대값과 최소값을 검색하여 div에 출력하시오.
	</p>

	<div id='result'></div>
	<script>
		let array=[-100,52,6,5,111885,694,654,84,635,46];
		let r = document.getElementById('result');
		let max = array[0];
		let min = array[0];
		for(i of array){
			if(max<i){
				max=i;
			}
			if(min>i){
				min=i;
			}
		}
		r.innerHTML = '최대값 : ' + max + '<br/>' + '최소 값 : ' + min + '<br/>'; 
	</script>

</body>
</html>