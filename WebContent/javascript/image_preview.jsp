<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 다중 선택</title>
</head>
<body>

<h3>image preview</h3>
<input type="file" value='사진' id='btnFile'/>
<img width='200px' height='300px' id='target' />

<script>
	let btn = document.querySelector('#btnFile');
	btn.onchange = function(event){
		let ele = event.srcElement;
		console.log(ele);
		console.log('name : ', ele.value);
		
		// reader를 만들어 파일의 경로명을 읽음
		let url = ele.files[0]; // 첫번째 파일의 경로
		let reader = new FileReader();
		reader.readAsDataURL(url);
		
		// 파일을 다 읽으면 실행
		reader.onload = function(ev){
			let img = new Image();
			img.src = ev.target.result; // 실제로 읽혀진 이미지 파일
			document.getElementById('target').src = img.src;
		}
	}
</script>

</body>
</html>