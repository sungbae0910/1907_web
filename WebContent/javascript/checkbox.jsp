<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkbox</title>
<style>
	#result{
		border: 1px solid orange;
		padding: 20px;
		box-sizing: border-box;
		width: 400px;
		height: 300px;
	}
</style>
</head>
<body>

	<h3>radio</h3>
	<form name='frm'>
		<h3>가고싶은 산</h3>
		<label><input type='checkbox' name='mnt' value='백두산'/>백두산</label>
		<label><input type='checkbox' name='mnt' value='금강산'/>금강산</label>
		<label><input type='checkbox' name='mnt' value='치악산'/>치악산</label>
		<label><input type='checkbox' name='mnt' value='설악산'/>설악산</label>
		<label><input type='checkbox' name='mnt' value='한라산'/>한라산</label>
		
		<h3>살고 싶은 지역</h3>
		<label><input type='checkbox' name='city' value='서울'/>서울</label>
		<label><input type='checkbox' name='city' value='경기도'/>경기도</label>
		<label><input type='checkbox' name='city' value='인천'/>인천</label>
		<label><input type='checkbox' name='city' value='전라도'/>전라도</label>
		<label><input type='checkbox' name='city' value='경상도'/>경상도</label>
		
		<h3>가봤던 나라는?</h3>		
		<label><input type='checkbox' name='nation' value='싱가포르'/>싱가포르</label>
		<label><input type='checkbox' name='nation' value='태국'/>태국</label>
		<label><input type='checkbox' name='nation' value='인도네시아'/>인도네시아</label>
		<label><input type='checkbox' name='nation' value='미국'/>미국</label>
		<br/><br/>
		<input type='button' value='결정' name='btn' /> 
	</form>
	
	<div id='result'></div>
	<script>
		frm.btn.onclick = function(){
			//산의 선택여부
			let mntFlag = false;
			let str = '';
			let mnt = []; //체크한 값을 모두 넣기 위해 배열선언
			let city = []; //체크한 값을 모두 넣기 위해 배열선언
			let nation = []; //체크한 값을 모두 넣기 위해 배열선언
			let r = document.getElementById('result');
			for(i=0; i<frm.mnt.length; i++){
				if(frm.mnt[i].checked){
					mnt.push(frm.mnt[i].value);
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('가고 싶은 산을 선택해주세요');
				return; // return문이 없으면 alert창이 모두 뜨게 됨
			}
					
			// 살고 싶은 지역 선택여부
			mntFlag = false;
			for(i=0; i<frm.city.length; i++){
				if(frm.city[i].checked){
					city.push(frm.city[i].value);
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('살고싶은 지역을 선택해주세요')
				return;
			}
			
			// 가보았던 나라 선택여부
			mntFlag = false;
			for(i=0; i<frm.nation.length; i++){
				if(frm.nation[i].checked){
					nation.push(frm.nation[i].value);
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('나라를 선택해주세요');
				return;
			}
			
			str = '선택한 산이름 : '+ mnt + '<br/>'+ '선택한 도시 : ' + city + '<br/>' + '선택한 나라 : ' + nation + '<br/>';
			r.innerHTML=str;
		} 		
	</script>
</body>
</html>