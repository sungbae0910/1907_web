<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview_3</title>
<style>
	#att_file{
		border:1px solid #0000ff;
		padding: 10px;
		box-sizing: border-box;
		width: 600px;
	}
	#att_file>div{
		position:relative;
		display: inline-block;
		margin: 3px;
	}
	#att_file>div{
		display: inline-block;
		margin: 3px;
	}

	#att_file .btnDel{
		position: absolute;
		right: 3px;
		bottom: 2px;
		border:0 #ffffff;
	}	
</style>
</head>
<body>

<h3>첨부파일 동적삽입/삭제</h3>
<form name='frm'>
<label>첨부 이미지</label>
<div id='att_file'></div>
</form>
	
<script>
	let main = document.getElementById('att_file');
	let cnt = 0;
	makeDiv(main);
	function makeDiv(main){ // id='att_file'인 div를 매개변수로 받음
		let div = document.createElement('div');
		div.setAttribute('style', 'border:1px solid #f00; width:120px;height:180px');
		
		//image tag
		let img = document.createElement('img');
		img.setAttribute('name', 'img'+cnt);
		img.setAttribute('width', '120px');
		img.setAttribute('height', '180px');
		img.src = 'http://placehold.it/120x180';
		
		
		div.appendChild(img);
		
		//삭제버튼
		let btnDel = document.createElement('input');
		btnDel.setAttribute('name', 'btnDel'+cnt);
		btnDel.setAttribute('type', 'button');
		btnDel.setAttribute('value', 'X');
		btnDel.setAttribute('class', 'btnDel');
		btnDel.onclick = function(ev){
			let obj = ev.srcElement;
			let parent = obj.parentNode;
			let tag = parent.getElementsByTagName('input')[1];
			if(tag.getAttribute('modify')=='yes'){
				main.removeChild(parent);
			}
		}
		
		div.appendChild(btnDel);
		
		
		//이미지당 file tag
		let file = document.createElement('input');
		file.setAttribute('type', 'file');
		file.setAttribute('name', 'attFile'+cnt);
		file.setAttribute('style', 'display:none');
		file.setAttribute('modify', 'no'); 
		div.appendChild(file);
		
		file.onclick = function imagePreview(event){ // 숨겨진 파일 버튼 이벤트를 발생시켜 마치 이미지 영역을 클릭하면 filechooser창이 뜨는 것처럼 구현
			let btn = event.srcElement;
			btn.onchange = function(){
			let url = btn.files[0]; // 파일 경로
			let reader =  new FileReader();
			reader.readAsDataURL(url);
			
			reader.onload = function(ev){
				let target = event.srcElement;
				let temp = new Image();
				temp.src = ev.target.result;
				img.src = temp.src;
				
				}
			//마지막 버튼을 눌렀을 때만 새로운 div영역을 생성해줌
				if(file.getAttribute('modify') =='no'){
					makeDiv(main); // 사진영역 추가
				}
				file.setAttribute('modify', 'yes');
			}
		}
		
		// 이미지를 클릭하면
		img.onclick = function(){
			file.click();
		}
		
		main.appendChild(div); // id='att_file'인 div에 새로운 div를 추가해줌
		cnt++;
	}
	
	
	
	
	
</script>
</body>
</html>