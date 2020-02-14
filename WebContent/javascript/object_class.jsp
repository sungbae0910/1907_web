<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_class</title>
</head>
<body>
	
<h3>class를 사용한 객체 생성</h3>
<div id='result'>

</div>
<script>
	class Member{
		constructor(id, name, phone){
			this.id=id;
			this.name=name;
			this.phone=phone;
		}
		
		setId(id){this.id=id;}
		setName(name){this.name=name;}
		setPhone(phone){this.phone=phone;}
		
		getId(){return this.id};
		getName(){return this.name};
		getPhone(){return this.phone};
		
		toString(){
			let str = 'id : ' + this.id + 'name : ' + this.name + 'phone : ' + this.phone;
			return str;
		}
		
		toJSON(){
			let str = {"id":this.id, "name":this.name, "phone":this.phone};
			return str;
			}
		
		toHTML(){
			let str = '<div>' + '<ul>'
						+'<li>아이디 : '+this.id + '</li>'
						+'<li>이름 : '+this.name + '</li>'
						+'<li>전화번호 : '+this.phone + '</li>'
						+'</ul>'+'</div>';
			return str;
		}
	}
	//객체를 생성하여 배열에 저장한 후 console출력
	let ar=[];
	let r = document.getElementById('result');
	let str = '';
	
	let m1 = new Member('lee','bae','010-3130-1333');
	let m2 = new Member('lee2','bae2','010-3130-1333');
	let m3 = new Member('lee3','bae3','010-3130-1333');
	
	ar.push(m1);
	ar.push(m2);
	ar.push(m3);
	
	for(i=0; i<ar.length; i++){
		console.log(ar[i].toString());
	}
	for(i=0; i<ar.length; i++){
		console.log(ar[i].toJSON());
	}
	for(i=0; i<ar.length; i++){
		console.log(ar[i].toHTML());
		str+=ar[i].toHTML();
	}
	r.innerHTML=str;
</script>
</body>
</html>