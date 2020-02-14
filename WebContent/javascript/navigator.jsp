<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navigator</title>
</head>
<body>
<h3>navigator</h3>
<input type='button' value='모바일 페이지로 이동' id='btn'/>
<script>
	let userAgent = navigator.userAgent;
	console.log('userAgent : ', userAgent);
	
	let btn = document.getElementById('btn');
	btn.onclick = function(){
		let sp = ['android', 'ipod', 'iphone'];
		for(let i in sp){
			if(userAgent.toLowerCase().match(new RegExp(sp[i]))){
				alert('스마트폰 페이지로 이동합니다');
				location.href = 'http://m.naver.com';
			}
		}
	}
</script>

</body>
</html>