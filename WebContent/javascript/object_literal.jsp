<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_literal</title>
</head>
<body>
<h3>literal을 사용한 객체 생성</h3>
<p id='info'>
	let obj = {} 으로 객체 obj를 생성함
</p>

<script>
//기본형(1회성)
let obj1 = {};
obj1.id='hong';
obj1.name='honggil';
obj1.eng=80;
obj1.kor=60;
obj1.tot=obj1.kor+obj1.eng;
obj1.avg=obj1.tot/2;
console.log('----------객체 리터럴');
console.log('id : ', obj1.id);
console.log('name : ', obj1.name);
console.log('eng : ', obj1.eng);
console.log('kor : ', obj1.kor);
console.log('tot : ', obj1.tot);
console.log('avg : ', obj1.avg);

//메소드가 있는 리터럴 객체
let obj2 = {};
obj2.code='a001';
obj2.codeName='왓?!';
obj2.output=function(){
	console.log('메서드가 있는 리터럴객체');
	console.log(obj2.code + ':' + obj2.codeName);
}
obj2.setCode = function(code){
	this.code = code;
}
obj2.setCodeName = function(cn){
	this.codeName = cn;
}
obj2.output();
obj2.setCode('b001');
obj2.setCodeName('What?!');
obj2.output();

//literal객체를 map으로 생성
let obj3 = {
		"id":"a001", "name":"hoongg", "address":"seoul", "phone":"010-1111-2313", 
		"setId":function(id){this.id=id}, "setName":function(name){this.name=name}
}
console.log('-------------------------')
console.log('id : '+ obj3.id);
console.log('name : '+ obj3.name);
console.log('address : '+ obj3.address);
console.log('phone : '+ obj3.phone);
obj3.setId('c001');
obj3.setName('lee');
console.log('id : '+ obj3.id);
console.log('name : '+ obj3.name);
console.log('address : '+ obj3.address);
console.log('phone : '+ obj3.phone);



</script>
</body>
</html>