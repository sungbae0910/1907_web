<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_2</title>
<style>
	#result{
		border: 1px solid blue;
		border-radius: 10px 10px 10px 10px;
		width: 200px;
		padding: 10px;
		font-weight: bold;
		font-size: 20px;
		margin: 10px;
	}
</style>
</head>
<body>
<h3>array_2</h3>
<div>
 폼을 사용하여 아이디, 성명, 국어, 영어점수를 입력받아 총점과 평균을 계산하여 하나의 배열로 저장 <br/>
 [{"id": "park"}]<br/>
</div>

<form name='frm'>
	<label>아이디</label><br/>
	<input type='text' name='iid'/><br/>
	<label>성명</label><br/>
	<input type='text' name='irum'/><br/>
	<label>국어</label><br/>
	<input type='text' name='kor'/><br/>
	<label>영어</label><br/>
	<input type='text' name='eng'/><br/>
	<input type='button' name='btnS' value='저장'/>
	<input type='button' name='btnO' value='출력'/>
</form>
<div id='result'></div>

<script>
	let save = [];
	let save2 = {};
	let r = document.getElementById('result');
	frm.btnS.onclick = function(){
		save2 = {"id" : frm.iid.value, "irum" : frm.irum.value , 
				"kor" : frm.kor.value, "eng" : frm.eng.value, 
				"tot": Number(frm.kor.value)+Number(frm.eng.value), 
				"avg" : (Number(frm.kor.value)+Number(frm.eng.value))/2};

		save.push(save2);
	}
	
	frm.btnO.onclick = function(){
		let str = '';
		for(v of save){
			str += 'id : ' + v.id + '<br/>' 
			+ '이름 : ' + v.irum + '<br/>' + '국어 : ' 
			+ v.kor + '<br/>' + '영어 : ' + v.eng + '<br/>'
			+ '총점 : ' + v.tot + '<br/>' + '평균 : ' + v.avg + '<br/>';
		}
		r.innerHTML = str;
	}
</script>
</body>
</html>