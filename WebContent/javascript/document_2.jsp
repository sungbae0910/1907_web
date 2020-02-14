<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>document_2</title>
<style>
	form>select{
		width:200px;
	}
</style>
</head>
<body>
<h3>출장가고싶은 지역(셀렉트 상자를 클릭할때마다 다른 값이 뜸)</h3>
<form name='frm'>
	<label>국가</label>
	<select name='cty' id='cty'></select>
	<label>지역</label>
	<select name='zone' id='zone'></select>
	
	<label>인원 수</label>
	<select name='cnt' id='cnt'></select>
</form>

<script>
	function init(){
		let arrayCty = ['미국', '일본'];
		let arrayZone = [ ['LA','New York'] , ['훗카이도','동경'] ];
		let arrayCnt = [[1,2,3,4], [5,6,7,8], [5,6,10,11],[1,9]];
		
		let cty = document.getElementById('cty');
		let zone = document.getElementById('zone');
		let cnt = document.getElementById('cnt');
		
		//국가 항목에 옵션추가
		for(i=0; i<arrayCty.length; i++){
			var op = document.createElement('option');
			var test = document.createTextNode(arrayCty[i]);
			
			op.appendChild(test);
			cty.appendChild(op);
		}
		
		
		// 국가 선택이 되면 도시를 보여줌
		cty.onchange = function(){ 
			let index = cty.selectedIndex;
			zone.length=0; //option 초기화
			for(i=0; i<arrayZone[index].length; i++){ //미국을 클릭했으면 인덱스 번호가 0, 일본은 1
				var txt = arrayZone[index][i];
				zone.options[i] = new Option(txt,txt);
			}
			zone.onchange();
		}
		
		zone.onchange = function(){
			let index = zone.selectedIndex;
			cnt.length = 0; //option 초기화
			for(i=0; i<arrayCnt[index].length; i++){
				var txt = arrayCnt[index][i];
				cnt.options[i] = new Option(txt,txt);
			}
		}
		cty.onchange();
		zone.onchange();
	}
	
	init();
</script>

</body>
</html>