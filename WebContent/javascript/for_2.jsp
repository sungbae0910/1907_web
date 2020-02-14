<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_2</title>
<style>
	#gugudan{
		border: 1px solid blue;
		height:600px;
		overflow: auto;
	}
	
	#gugudan div:nth-child(2n){
	
		color: orange;
	}
	
	#gugudan div:nth-child(2n-1){
		color: blue;
	}
</style>
</head>
<body>
	<div id='gugudan'>
	</div>
	
	
	<script>
		gugu();
		
		function gugu(){
			let r = 0;
			let g = document.getElementById('gugudan');
			let str = '';
			for(i=2; i<=9; i++){
				str+='<div>';
				for(j=1; j<=9; j++){
					r = i*j;					
					str += i + '*' + j + '=' + r + '<br/>';
					g.innerHTML = str;
				}
				str+='</div>';
			}
		}
	
	</script>
</body>
</html>