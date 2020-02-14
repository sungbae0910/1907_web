<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage_form</title>
</head>
<body>
	<h3>폼정보를 storage에 저장한 후 재설정하기</h3>
	<form name='frm'>
		<label>아이디</label>
		<input type='text' name='mId'/><br/>
		<label>성별</label>
		<label><input type='radio' name='gender' value='m'/>남자</label>
		<label><input type='radio' name='gender' value='f'/>여자</label>
		<br/>
		<label>취미</label>
		<label><input type='checkbox' name='hobby' value='축구'/>축구</label>
		<label><input type='checkbox' name='hobby' value='농구'/>농구</label>
		<label><input type='checkbox' name='hobby' value='탁구'/>탁구</label>
		<label><input type='checkbox' name='hobby' value='야구'/>야구</label>
		<br/>
		<label>과정선택</label>
		<select size='1' name='subject'>
			<option value='java'>java</option>
			<option value='html'>html</option>
			<option value='css'>css</option>
			<option value='javascript'>javascript</option>
		</select>
		<p/>
		<input type='button' value='save' name='btnSave'/>
	</form>
	
	<script>
	//저장된 object를 form에다가 세팅함
	let obj = localStorage.getItem('data');
	if(obj != null){
		let d = JSON.parse(obj); // obj를 다시 객체로 변환
		frm.mId.value = d.mId;
		
		if(d.gender == 'm'){ // 성별이 m이면 남자표시
			frm.gender[0].checked = true;
		}else{ // m이 아니라면 여자표시
			frm.gender[1].checked = true;
		}
		
		//hobby를 표시하기 위해 이중 for문을 사용해야함 
		for(i=0; i<frm.hobby.length; i++){
			for(j=0; j<d.hobby.length; j++){
				if(frm.hobby[i].value == d.hobby[j]){
					frm.hobby[i].checked = true;
					break;
				}
			}
		}
		
		for(i=0; i<frm.subject.length; i++){
			if(frm.subject[i].value == d.subject){
				frm.subject.selectedIndex = i;
			}
		} 
		// frm.subject.value = d.subject;  
		
	}
	
		frm.btnSave.onclick=function(){
			let mId = frm.mId.value;
			let gender;
			let hobby = []; //배열선언(JSON type)
			let subject;
			if(frm.gender[0].checked) gender = frm.gender[0].value;
			else					  gender = frm.gender[1].value;
			
			for(i=0; i<frm.hobby.length; i++){
				if(frm.hobby[i].checked) hobby.push(frm.hobby[i].value); // 체크되어있으면 hobby배열에 push 즉, 추가해라
			}
			subject = frm.subject.value; 
			
			let d = new Data(mId, gender, hobby, subject); // data function 호출
			let s = JSON.stringify(d); // 객체를 저장
			console.log('sava data', s);
			localStorage.setItem('data', s);
		}
		
		// object 생성
		function Data(mId, gender, hobby, subject){
			this.mId = mId;  // this 생략 불가능
			this.gender = gender;
			this.hobby = hobby;
			this.subject = subject;
		}
	</script>
</body>
</html>