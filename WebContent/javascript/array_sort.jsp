<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_sort</title>
<script src="../lib/jquery-3.4.1.js"></script>
</head>
<body>

<h3>배열 정렬</h3>
<script>
	let array1 = [315,8,4,56,48,123,13,56,4];
	let array2 = ['asa','dqw','eq','a','z','c','a','w','ad','asd','wqe','qw','e','qweqw'];
	
	console.log('array1 정렬 전' , array1);
	console.log('array2 정렬 전' , array2);
	
	array1.sort();
	array2.sort();
	
	console.log('array1 정렬 후' + array1);
	console.log('array2 정렬 후' + array2);
	
	array1.sort(
	function numAsc(left,right){
		return left-right;		
	});
	
	console.log('숫자 정렬 후 : ' + array1);
	array1.reverse();
	console.log('정렬 후 뒤집기(내림차순) : ' + array1);
	
	console.log('join : ', array1.join('-------->'));
	
	//object형 데이터를 배열에 저장한 후 원하는 키로 정렬
	function Data(id, score){
		this.id=id;
		this.score=score;
	}
	
	let array3 = [];
	array3.push(new Data('a',60));
	array3.push(new Data('d',80));
	array3.push(new Data('c',90));
	array3.push(new Data('y',100));
	array3.push(new Data('b',15));
	
	//아이디순으로 오름차순 정렬
	function idSort(obj1, obj2){
		//return obj1.id-obj2.id;
		let r = (obj1.id>obj2.id)? 1: - 1;
		return r;
	}
	
	function scoreSort(obj1, obj2){
		return Number(obj1.score)-Number(obj2.score);
	}
	array3.sort(idSort);
	
	console.log('---------------');
	for(d of array3){
		console.log(d.id+' : '+d.score);
	}
	
	array3.sort(scoreSort);
	
	console.log('---------------');
	for(d of array3){
		console.log(d.id+' : '+d.score);
	}
	
	// 배열요소 삭제(끝에서부터 앞으로 돌려야함) 
	for(i=array1.length-1; i>=0; i--){
		if(array1[i]>100){
		array1.splice(i,1);
		}
	}
	console.log('삭제 후 : '+array1);
</script>

</body>
</html>