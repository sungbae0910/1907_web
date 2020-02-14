<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_prototype</title>
</head>
<body>

<h3>prototype을 사용한 메소드 선언</h3>

<div id='result'></div>

<script>
	function Product(code, codeName, ea, price){
		this.code=code;
		this.codeName=codeName;
		this.ea=ea;
		this.price=price;
	}
	//product로 만들어진 객체들이 사용하는 공유메소드()
	Product.prototype.setCode = function(code){this.code=code;};
	Product.prototype.setCodeName = function(codeName){this.codeName=codeName;};
	Product.prototype.setEa = function(ea){this.ea=ea;}
	Product.prototype.setPrice = function(price){this.price=price;};
	Product.prototype.toJSON = function(){
		let str=`{"code":"\${this.code}", "codeName":"\${this.codeName}", "ea":"\${this.ea}","price":"\${this.price}"}`;
			return str;
		};
	Product.prototype.toHTML = function(){
		let str='<div>'+this.code+this.codeName+this.ea+this.price+'</div>';
		return str;
	};
	
	//Product 객체를 생성하여 배열에 추가한 후 입력값을 div에 표시하시오.
	let r = document.getElementById('result');
	let b = [];
	let p1 = new Product('1','com','10','1000000');
	let p2 = new Product();
	p2.setCode('2');
	p2.setCodeName('ch');
	p2.setEa('30');
	p2.setPrice('1000000');
	
	b.push(p1);
	b.push(p2);
	
	for(i=0; i<b.length; i++){
		r.innerHTML = b[i].toJSON();
	}
	
</script>
</body>
</html>