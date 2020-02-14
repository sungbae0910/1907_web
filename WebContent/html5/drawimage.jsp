<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drawImage</title>
<style>
	#can{
		border: 1px dashed #123456;
	}
</style>
</head>
<body>
	
	<h3>drawImage</h3>
	<canvas id='can' width='400px' height='600'></canvas>
	<br/>
	<label>확대 축소</label>
	<form name='frm'>
		<input type='range' name='rate' min='-1' max='1' step='0.1'/>
	</form>
	
	<script>
		var ctx = document.getElementById('can').getContext('2d');
		frm.rate.onchange=view; //function view를 실행하여라(call back)
		view();
		function view(){
			var img = new Image(); //<img/>태그 생성한거와 마찬가지
			img.src='../images/down.jpg';
			ctx.clearRect(0,0,500,600);
			ctx.drawImage(img, 5,5); //원본이미지
			var w = img.width + (img.width * frm.rate.value);
			var h = img.height + (img.height * frm.rate.value);
			ctx.drawImage(img,0,0, img.width, img.height, img.width+10, 0, w, h);
		}
	</script>
</body>
</html>