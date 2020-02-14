<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare_2</title>
<style>
	#result{
		border: 1px solid blue;
		width: 250px;
		height: 150px;
		font-weight: bold;
		padding: 20px;
	}
</style>
</head>
<body>
	<form name='frm'>
		<label><input type='checkbox' value='고기' name='chk' checked />고기</label>
		<label><input type='checkbox' value='치킨' name='chk' />치킨</label>
		<label><input type='checkbox' value='라면' name='chk' checked />라면</label>
		<label><input type='checkbox' value='회' name='chk' />회</label>
		<label><input type='checkbox' value='김치찌개' name='chk' />김치찌개</label>
		<label><input type='checkbox' value='밥' name='chk' /> 밥</label>
		<p/>
		<input type='button' name='btna' value='익명'/>
		<input type='button' name='btnb' value='call' />
		<input type='button' name='btnc' value='함수'/>
		<input type='button' name='btnd' value='선언적'/>
		<input type='button' name='btne' value='화살표'/>
	</form>
	<div id='result'></div>
	
	<script>
	//익명함수
		 frm.btna.onclick = function(){
			let r = document.getElementById('result');
			let s = '';
			let cnt = 1;
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s+='좋아하는 음식 ' + cnt + '번째 : ' + frm.chk[i].value + '<br/>';
					cnt++;
				}
			}	
			r.innerHTML = s;
		} 	
		
	//callback함수
		frm.btnb.onclick = callb;
		
		function callb(){
			let r = document.getElementById('result');
			let s = '';
			let cnt = 1;
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s+='좋아하는 음식 ' + cnt + '번째 : ' + frm.chk[i].value + '<br/>';
					cnt++;
				}
			}	
			r.innerHTML = s;
		} 	
		
	//함수적 선언
		let nh = function callc(){
			let r = document.getElementById('result');
			let s = '';
			let cnt = 1;
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s+='좋아하는 음식 ' + cnt + '번째 : ' + frm.chk[i].value + '<br/>';
					cnt++;
				}
			}	
			r.innerHTML = s;
		};	 
		frm.btnc.onclick = nh; 
		
	//선언적 함수
		frm.btnd.onclick = dec;
		function dec(){
			let r = document.getElementById('result');
			let s = '';
			let cnt = 1;
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s+='좋아하는 음식 ' + cnt + '번째 : ' + frm.chk[i].value + '<br/>';
					cnt++;
				}
			}
			r.innerHTML = s;
		}
		
	//화살표 함수
		let va = () => {
			let r = document.getElementById('result');
			let s = '';
			let cnt = 1;
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s+='좋아하는 음식 ' + cnt + '번째 : ' + frm.chk[i].value + '<br/>';
					cnt++;
				}
			}
			r.innerHTML = s;
		}
		frm.btne.onclick = va;
		
	//즉시실행 함수(배열을 이용해봄)
		/* (function (){
			let r = document.getElementById('result');
			let s = [];
			for(i=0; i<frm.chk.length; i++){
				if(frm.chk[i].checked){
					s.push(frm.chk[i].value);
				}
			}
			r.innerHTML = '선택한 음식 : ' + s;
		}()); */
		(function(){
			let str = '';
			let r = document.getElementById('result');
			str = 'dddd : ' + gen();
			r.innerHTML = str;
		}());
	
	//공통 호출함수({...}내용은 똑같기 때문에 공통함수를 만들어서 호출만하면 편리)
	function gen(){
		let food = [];
		food.length=0;//배열초기화
		for(v of frm.chk){
			if(v.checked){
				food.push(v.value);
			}
		}
		return food;
	}
	</script>
</body>
</html>