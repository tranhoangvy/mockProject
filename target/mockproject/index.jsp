<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="<c:url value='/resources/bootstrap.min.css' />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
html {
	background-color: #10151B;
	background:
		url(https://static.pexels.com/photos/3797/black-and-white-sport-fight-boxer.jpg)
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

body {
	font-family: "Oswald", sans-serif;
	-webkit-font-smoothing: antialiased;
	font-smoothing: antialiased;
}

h1 {
	line-height: .95;
	color: #66fcf1;
	font-weight: 900;
	font-size: 150px;
	text-transform: uppercase;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	pointer-events: none;
}

.center {
	position: absolute;
	margin: auto;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 581px;
	height: 50%;
}

.btn {
	margin: 0 auto;
	width: 170px;
	height: 60px;
	padding: 6px 0 0 3px;
	border: 2px solid #66fcf1;
	border-radius: 2px;
	background: none;
	font-size: 16px;
	line-height: 54px;
	color: #fff;
	letter-spacing: .25em;
	text-decoration: none;
	font-weight: 600;
	text-transform: uppercase;
	vertical-align: middle;
	text-align: center;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	-webkit-transition: background .4s, color .4s;
	transition: background .4s, color .4s;
	cursor: pointer;
}

.btn:hover {
	background: #66fcf1;
	color: #10151B;
}
</style>
</head>
<body>
	<!-- Inspired by https://bert.house/en/-->
	<div class="center">
		<h1>WELCOME</h1>
		<div class="btn"><a href="${pageContext.request.contextPath}/cinemaroom/search">Enter</a></div>
	</div>
</body>
</html>