<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<style>
	.sell{
		width:120px;
	}
	
	#result{
		overflow: hidden;
		width: 300px;
		height: 150px;
		border: 1px solid blue;
		border-radius: 10px 10px 10px 10px;
		padding: 10px;
		font-weight: bold;
		word-break: break-all;
	}
</style>
</head>
<body>
	
	<h3>select</h3>
	
	<form name='frm'>
	<h4>과정명을 하나만 선택</h4>
	<select name='course' class='sell'>
		<option value='프로그래밍'> 프로그래밍 과정</option>
		<option value='웹디자인과정'> 웹 디자인 과정</option>
		<option value='스크립트 과정'> 스크립트 과정</option>
		<option value='퍼블리싱 과정'> 퍼블리싱 과정</option>	
	</select>
	
	<h4>신청과목을 1개 이상 선택(ctrl키를 이용하여 다중 선택 가능)</h4>
	<select name='subs' size='7' multiple='multiple' class='sell'>
		<option value='Java'>Java</option>
		<option value='HTML5'>HTML5</option>
		<option value='CSS3'>CSS3</option>
		<option value='JavaScript'>JavaScript</option>
		<option value='JSP'>JSP</option>
		<option value='JQuery'>JQuery</option>
		<option value='Ajax'>Ajax</option>
		<option value='node.js'>node.js</option>
		<option value='Spring'>Spring</option>
	</select>
	<p/>
	<input type='button' value='선택' name='btn'/>
	</form>
	
	<div id='result'></div>
	
	<script>
		let subject = [];
		let r = document.getElementById('result');
		let str = '';
		frm.btn.onclick = function(){
			str = '선택한 과정 : ' + frm.course.value;
			
			for(i=0; i<frm.subs.length; i++){
				if(frm.subs[i].selected){
					subject.push(frm.subs[i].value);
				}
			}
			str += '<li>과목명 : ' + subject;
			r.innerHTML = str;
		}
	</script>
</body>
</html>