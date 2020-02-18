<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_toggle</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<h3>토글 이벤트</h3>

<button id='btnToggle'>Toggle</button>
<button id='btnSlide'>slide</button>
<button id='btnFade'>Fade</button>
<p/>
<div id='result'>
	Why is Google Translate incorrect?
However, the accuracy is still below expectations, so many people seem to be disappointed.
So now I have a few minutes who don't use Google Translator.
This is a phenomenon in which the order and language system of Korean and English are so different that it is inevitable.
It is more difficult to translate from Korean to English than from English to German or French.
But the more accurate cause is that Korea is not a big market for Google, so we can assume that a lot of investment has not been made in translation program development.
Even in Japanese, the translation results using Google Translator are very accurate. (Although Japanese is similar in word order, it is difficult to translate English.)
Source: https://halyang-drift.tistory.com/27 [Little Boy Drifter]
</div>

<script>
$('#btnToggle').click(function(){
	//3초에 걸쳐서 글이 사라짐
	$('#result').toggle(3000);
});

$('#btnSlide').click(function(){
	$('#result').slideToggle(3000);
});

$('#btnFade').click(function(){
	$('#result').fadeToggle(3000);
});
</script>
</body>
</html>