<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declare</title>
<script>
	function gugu(){
		let da=5;
		let i=0;
		let r=0;
		let p=document.getElementById('result');
		p.innerHTML = '';
		for(i=1; i<10; i++){
			r = '<div>'+da + '*' + i + '=' + (da*i)+'</div>';
			/* document.write(r);
			document.write('<br/>'); */
			p.innerHTML = p.innerHTML + r;
		}			
	}
</script>

<style>
	p div:nth-child(2n-1) {
		color:red;
}
</style>
</head>
<body>
	<input type='button' value='ok' onclick='alert("OK")'/>
	<input type='button' value='good' onclick='javascript:a=10;b=20;c=a+b;alert(c)'/>
	<input type='button' value='구구단' onclick='gugu()'/>
	<p id='result'></p>
	<script>
		document.write('이성배');
		console.log('안녕 이제는 안녕');
	</script>
	
</body>
</html>