<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		<tr>
			<td>asd</td>
			<td>asd</td>
			<td>asd</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
	</table>
	
	<h3>테이블 높이,넓이 지정</h3>
	<table width='150px' height='150px' border='1'>
		<tr align='center'>
			<td>asd</td>
			<td>asd</td>
			<td>asd</td>
		</tr>
		<tr>
			<td align='left'>1</td>
			<td align='center'>2</td>
			<td align='right'>3</td>
		</tr>
	</table>
	
	<h3>회원명단</h3>
	<table border='1' width='400px'> 
		<tr bgcolor='#abc' align='center'>
			<td>번호</td>
			<td>성명</td>
			<td>연락처</td>
		</tr>
		
		<tr align='center'>
			<td>1</td>
			<td>홍</td>
			<td>010-1234-5678</td>
		</tr>
	</table>
	
	<h3>테이블 헤더</h3>
	<table border='1' width='400px'>
		<tr bgcolor='#a8e8c8'>
			<th>번호</th>
			<th>성명</th>
			<th>연락처</th>
		</tr>
		<tr align='center'>
			<td>1</td>
			<td>홍</td>
			<td>010-1234-5678</td>
		</tr>
	</table>
	
	<h3>셀의 여백지정</h3>
	<table border='1' cellpadding='10px' cellspacing='10px'>
		<tr>
			<td>A</td>
			<td>B</td>
		</tr>
		<tr>
			<td>C</td>
			<td>D</td>
		</tr>
	</table>
	
	<h3>셀병합</h3>
	<table border='1' width='300px' cellspacing='0px'>
		<tr>
			<td>A</td>
			<td>B</td>
			<td colspan='2'>C</td>
		</tr>
		<tr>
			<td>D</td>
			<td>E</td>
			<td>F</td>
			<td>G</td>
		</tr>
		
		<tr>
			<td>H</td>
			<td>I</td>
			<td colspan='2'>J</td>
		</tr>
		
		<tr>
			<td>K</td>
			<td>L</td>
			<td>M</td>
			<td>N</td>
		</tr>
	</table>
	<h3>행병합</h3>
	<table border='1' width='300px' height='150px'>
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
			<td rowspan='4'>d</td>
		</tr>
		<tr>
			<td>e</td>
			<td>f</td>
			<td>g</td>
		</tr>
		<tr>
			<td>h</td>
			<td>i</td>
			<td>j</td>
		</tr>
		<tr>
			<td>k</td>
			<td>l</td>
			<td>m</td>
		</tr>
	</table>
	<h3>frame:above</h3>
	<table frame='above'>
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
		</tr>
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
		</tr>
	</table>
	
	<h3>frame:hsides</h3>
	<table frame='hsides'>
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
		</tr>
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
		</tr>
	</table>
	
	
</body>
</html>