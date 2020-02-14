<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview2</title>
<style>
	#btnFile{
		display: none;
		
	}
</style>
</head>
<body>
<h3>이미지 미리보기</h3>
<img id='target' width='200px' height='250px'/>
<img id='target2' width='200px' height='250px'/>
<img id='target3' width='200px' height='250px'/>
<input type='file' id='btnFile' />

<script>
	let t1 = document.getElementById('target');
	let t2 = document.getElementById('target2');
	let t3 = document.getElementById('target3');
	let btnFile = document.getElementById('btnFile');
	
	t1.onclick = imagePreview;
	t2.onclick = imagePreview;
	t3.onclick = imagePreview;
	
	function imagePreview(event){ // 숨겨진 파일 버튼 이벤트를 발생시켜 마치 이미지 영역을 클릭하면 filechooser창이 뜨는 것처럼 구현
		btnFile.click();
		btnFile.onchange = function(){
			let url = btnFile.files[0]; // 파일 경로
			let reader =  new FileReader();
			reader.readAsDataURL(url);
			
			reader.onload = function(ev){
				let target = event.srcElement;
				let img = new Image();
				img.src = ev.target.result;
				target.src = img.src;
			}
		}
	}
</script>
</body>
</html>