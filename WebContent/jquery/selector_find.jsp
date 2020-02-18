<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_find</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<div id='result'>
</div>

<script>
var xml ='';

xml+='<friends>';
xml+='	<friend>';
xml+='		<name>이성배</name>';
xml+='		<language>Java</language>';
xml+='	</friend>';
xml+='	<friend>';
xml+='		<name>lee</name>';
xml+='		<language>C</language>';
xml+='	</friend>';
xml+='	<friend>';
xml+='		<name>bae</name>';
xml+='		<language>Python</language>';
xml+='	</friend>';
xml+='</friends>';

$(document).ready(function(){
	var xmlDoc = $.parseXML(xml);
	
	var output='';
	$(xmlDoc).find('friend').each(function(index, item){
		output+='<div>';
		output+='<h1>'+$(this).find('name').text()+'</h1>';
		output+='<p>'+$(this).find('language').text()+'</p>';
		output+='</div>';
		
	});
	$('#result').html(output); //.html => innerHTML
	
	$('div>div').css({
		'display':'inline-block',
		'padding':'20px',
		'border':'1px dashed skyblue',
		'margin':'10px',
		'border-radius':'10px 10px 10px 10px'
	});	
});
</script>
</body>
</html>