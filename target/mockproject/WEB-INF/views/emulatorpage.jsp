<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="imageSrc" value="/resources/fpt-logo.png" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="<c:url value='/resources/bootstrap.min1.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/style.css'/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="<c:url value='/resources/jquery-3.6.4.min.js' />"></script>
<style>
  .disabled {
    pointer-events: none;
    opacity: 0.5;
  }
</style>
</head>
<body>

	<nav class="navbar-top navbar-default navbar-fixed-top nav-custom">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<img
					src="${imageSrc}" alt="Image">
			</div>

			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav" style="margin-left: 270px">
					<li><a href="${pageContext.request.contextPath}/cinemaroom/search">Cinema Room List</a></li>
					<li><a href="${pageContext.request.contextPath}/cinemaroom/movie">Movie</a></li>
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<ul class="nav navbar-nav" style="margin-left: 270px">
						<li><a href="${pageContext.request.contextPath}/cinemaroom/information"><i class="fas fa-user"></i>&nbsp; Welcome
								VyTH2</a></li>
						<li><a href="${pageContext.request.contextPath}/cinemaroom/logout"><i class="fa-solid fa-right-from-bracket"></i>&nbsp;
								Logout</a></li>
					</ul>
				</ul>
			</div>
		</div>
	</nav>
	<main style="margin-top: 80px;">
		<div class="container-fluid">
			<div class="row" style="height: 73px; border-bottom: 5px solid gray;">
				<div class="col text-center">
					<h3>${noidung}</h3>
				</div>
			</div>
			<div style="margin-top: 200px; "><a href="${pageContext.request.contextPath}/cinemaroom/search">
				<button type="button" class="btn btn-primary btn-lg "
					style="height: 40px; width: 181px; font-size: 20px">
					<i class="fa-solid fa-backward"></i> &nbsp;Back
				</button></a>
			</div>
			
		</div>
			
	</main>
</body>
</html>