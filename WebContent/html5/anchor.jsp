<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4>새 페이지 링크 연결</h4>
	<a href="http://www.naver.com">네이버</a>
	<a href="http://www.google.com">구글ㄹ</a>
	<a href="http://192.168.0.21:8888/1907-web/html5/anchor.jsp">최지현</a>
	
	<h4>특정 브라우저(프레임)에 링크연결</h4>
	<a href="http://www.naver.com">네이버</a>
	<a href="http://www.google.com" target="sub_page">구글ㄹ</a>
	<a href="http://192.168.0.21:8888/1907-web/html5/anchor.jsp#1장">최지현</a>
	
	
	
	<h4>책갈피</h4>
	<a href="#1장">1장</a>
	<a href="#2장">2장</a>
	<a href="#3장">3장</a>
	<a href="#4장">4장</a>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br>
	<div id="1장">
		에휴??
	</div>
	
	<h4>iframe</h4>
	<iframe width="500px" height="400px" name="my_frame" style="border: 2px solid #0000ff">
	</iframe>
	
	<a href="http://www.nate.com" target="my_frame">네이버</a>
	<a href="http://www.google.com" target="my_frame">구글ㄹ</a>
	<a href="font.jsp" target="my_frame">폰트ㄹ</a>
	<a href="paragraph.jsp" target="my_frame">파라그래프ㅎ</a>
	<a href="http://192.168.0.21:8888/1907-web/html5/anchor.jsp" target="my_frame">최지현</a>
	
	
	
	<h4>파일 다운로드</h4>
	<img src='../images/images.jpg'><br/>
	<a href='../images/images.jpg'>보기</a>
	<a href='../images/images.jpg' download='test.jpg'>다운로드</a>
	
	
</body>
</html>