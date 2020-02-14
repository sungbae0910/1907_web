<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>String</title>
</head>
<body>
<h3>String 객체</h3>
<fieldSet>
<ol>
	<li>length : 문자열의 길이</li>
	<li>charAt(index) : index위치의 문자</li>
	<li>indexOf(str) | lastIndexOf(str) : str의 위치</li>
	<li>replace(regExp, replace) : 문자열 변경(정규식)</li>
	<li>split(seperator, limit) : 문자열의 분해</li>
	<li>substring(start, end) : 문자열추출</li>
</ol>
</fieldSet>

<script>
	let str = "abc 가나다 123 다나가";
	console.log(str + ': length=>' + str.length);
	
	let c = str.charAt(2);
	console.log('str.charAt(2) : ' + c);
	
	let index1 = str.indexOf('가');
	let index2 = str.lastIndexOf('가');
	console.log('str.indexOf("가") :', index1); //앞에서부터 찾음
	console.log('str.lastIndexOf("가")', index2); // 뒤에서부터 찾음
	
	let rep1 = str.replace('가', '각');
	let rep2 = str.replace(/가/, '간');
	let rep3 = str.replace(/가/g, '긴'); //정규식 g(global)
	console.log('rep1 : ', rep1);
	console.log('rep2 : ', rep2);
	console.log('rep3 : ', rep3);
	
	let array = str.split('');
	for(d in array){
		console.log(d+ ' : ' + array[d]);
	}
	
	let s1 = str.substring(0,3);
	console.log('str.subString(0,3) : ' + s1);
	let s2 = str.substring(11);
	console.log('str.subString(11) : ' + s2);
	
	let str2 = "881213-1234567";
	//생년, 생월, 생일, 성별을 구별하여 console에 출력
	let bir = str2.substring(0,2);
	let bir2 = str2.substring(2,4);
	let bir3 = str2.substring(4,6);
	
	let bir4 = str2.charAt(7);
	let sex = '';
	if(bir4==1 || bir4==3){
		sex = '남자';
	}else{
		sex = '여자';
	}
	
	console.log('생년 : '+bir+'년생');
	console.log('생월 : '+bir2+'월');
	console.log('생일 : '+bir3+'일');
	console.log('성별 : '+ sex);
</script>
</body>
</html>