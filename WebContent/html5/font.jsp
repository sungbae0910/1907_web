<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>font</title>
<style type="text/css">
/*  	.test{
		display: inline-block;
		font-weight: 400;
		test-align: center;
		white-space: nowrap;
		vertical-align: middle;
		-webkit-user-select: none;
		user-select: none;
		border: 1px solid transparent;
		padding: 0.375rem 0.75rem;
		font-size: 1rem;
		line-height: 1.5;
		border-radius: 0.25rem;
		transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	}
	.test primary{
		color: #fff;
		backgroud-color : #0000ff;
		border-color: #000000;
	}  */
/* 	body{
		background: #2ecc71;
		font-size: 62.5%;
	}
	
	button,
	button::after{
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3;
		-o-transition: all 0.3s;
		transition: all 0.3s;
	}
	
	button{
	background: none;
	border: 3px solid #fff;
	border-radius: 5px;
	color: #fff;
	display: block;
	font-size: 1.6em;
	font-weight: bold;
	margin: 1em auto;
	padding: 2em 6em;
	position: relative;
	text-transform: uppercase;
	}
	
	button::before,
	button::after{
		background: #fff;
		content: '';
		position: absolute;
		z-index: -1;
	}
	
	
	button:hover{
		color: #2ecc71;
	}
	
	.btn-1::before {
		 height: 100%;
 		 left: 0;
 		 top: 0;
 		 width: 100%;
	}
	
	.btn-1:after{
		background: #2ecc71;
		height: 100%;
		left: 0;
		top: 0;
		width: 100%;
	}
	
	.btn-1:hover:after{
		height: 0%;
		left: 50%;
		top: 50%;
		width: 0;
	} */
	@import url(https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css);
	@import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);
	body {
	font-family: 'Lato', sans-serif;
	background: #353535;
	color: #FFF;
	}
	a.animated-button:link, a.animated-
	button:visited{
		position: relative;
		display: block;
		margin: 30px auto 0;
		padding: 14px 15px;
		color: #fff;
		font-size: 14px;
		font-weight: bold;
		tetxt-align: center;
		text-decoration: none;
		text-transform: uppercase;
		overflow: hidden;
		letter-spacing: .08em;
		border-radius: 0;
		text-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 1px 0 rgba(0, 0, 0, 0.2);
		-webkit-transition: all 1s ease;
		-moz-transition: all 1s ease;
		-o-transition: all 1s ease;
		transition: all 1s ease;
	}
	a.animated-button:link:after, a.animated-
	button:visited:after{
		content: "";
		position: absolute;
		height: 0%;
		left: 50%;
		top: 50%;
		width: 150%;
		z-index: -1;
		-webkit-transition: all 0.75s ease 0s;
		-moz-transition: all 0.75s ease 0s;
		-o-transition: all 0.75s ease 0s;
		transition: all 0.75s ease 0s;
	}
	
	a.animated-button:link:hover, a.animated-button:visited:hover {
	color: #FFF;
	text-shadow: none;
	}
	
	a.animated-button:link:hover:after, a.animated-button:visited:hover:after {
	height: 450%;
	}
	
	a.animated-button:link, a.animated-button:visited {
	position: relative;
	display: block;
	margin: 30px auto 0;
	padding: 14px 15px;
	color: #fff;
	font-size:14px;
	border-radius: 0;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	letter-spacing: .08em;
	text-shadow: 0 0 1px rgba(0, 0, 0, 0.2), 0 1px 0 rgba(0, 0, 0, 0.2);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
	}
	
	a.animated-button.sandy-three{
		border: 2px solid #AEA8D3;
		color: #fff;
	}
	
	a.animated-button.sandy-three:after{
		border: 3px solid #AEA8D3;
		opacity: 0;
		-moz-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
		-ms-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
		-webkit-transform: translateX(-50%) translateY(-50%) rotate(-25deg);
		transform: translateX(-50%) translateY(-50%) rotate(-25deg);
	}
	
	a.animated-button.sandy-three:hover:after{
		height: 400% !important;
		opacity: 1;
		color: #fff;
	}
	
/* 	body{
		background-image:url('../images/images.jpg');
		background-repeat:no-repeat;
	} */
	
	#a{
		
	}
	
	.dd{
		
	}
 </style>
</head>
<body>
	<div>
		<font size="10" color="orange">test</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font size="30" color="blue">test</font><br>
		<button type="button" class="btn-1">test</button>
		<div class="col-md-3 col-sm-3 col-xs-6"> <a href="#" class="btn btn-sm animated-button sandy-three">Register</a> </div>
	</div><br/><br/><br/><br/><br/><br/>
	
	<div>
	<mark>형광색</mark><br/>
	x<sub>2</sub>
	</div>
		
</body>
</html>