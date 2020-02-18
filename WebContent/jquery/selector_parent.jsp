<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_parent</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>selector parent</h3>

<div>
	<span>비활성화</span>
	<button>활성화화기</button>
</div>
<script>

	$('button').click(function(){ //this는 이벤트를 발생시킨 본인
		$(this).text('비활성화하기');
		$(this).parent().css('background','skyblue');
		$(this).parent().find('span').text('활성화');
	});

</script>

</body>
</html>