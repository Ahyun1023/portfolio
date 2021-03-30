<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="<c:url value='/resources/plugins/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/resources/plugins/bootstrap-5.0.0-beta2-dist/js/bootstrap.min.js'/>" ></script>
<link type="text/css" rel="stylesheet" href="<c:url value='/resources/plugins/bootstrap-5.0.0-beta2-dist/css/bootstrap.min.css'/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/home.css?qw=2'/>"/>
<script>
	$(document).ready(function(){
		$('.middleDiv').fadeIn(1500);
		
		sleep(2000).then(() =>
			$('.nextScrollDiv').animate({
				opacity: 1
			})
		);
	});
	
	function fnMove(){
		var offset = $(".middleContent").offset();
		
		$('body').animate({
			scrollTop: offset.top
		})
	}
	
	function sleep(ms){
		return new Promise((r) => setTimeout(r, ms));
	}
</script>
<title>Home</title>
</head>
<body>
	<!-- 상단 메뉴 header -->
	<div class="headerDiv">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
			<div class="container">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link upperMenu" href="/hello">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link upperMenu" href="#">About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link upperMenu" href="#">Project</a>
						</li>
						<li class="nav-item">
							<a class="nav-link upperMenu" href="#">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	
	<!-- 내용 div -->
	<div class="middleDiv">
		<div class="contentDiv">
			<div class="headerContent">
				<div class="titleText">test text</div>
				<div class="subTitleText">
					Lorem Ipsum is simply dummy text of the printing and typesetting
					industry. Lorem Ipsum has been the industry's standard dummy text
					ever since the 1500s, when an unknown printer took a galley of type
					and scrambled it to make a type specimen book. It has survived not
					only five centuries, but also the leap into electronic typesetting,
					remaining essentially unchanged. It was popularised in the 1960s
					with the release of Letraset sheets containing Lorem Ipsum
					passages, and more recently with desktop publishing software like
					Aldus PageMaker including versions of Lorem Ipsum.
					<hr style="border-top: 5px solid white;" />
				</div>

				<div class="buttonDiv">
					<button type="button" class="btn btn-primary activateButton">Activate</button>
				</div>

				<div class="nextScrollDiv" onclick="fnMove()">
					<div class="nextScrollButton">
						<div>LEARN MORE</div>
						<div>↓</div>
					</div>
				</div>
			</div>

			<div class="middleContent">
				<div class="firstContent">
					<div class="titleText">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
						Quisque nec vehicula tellus. Sed eu ullamcorper augue.
					</div>
					<div class="subTitleText">
						orem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec vehicula tellus.<br>
						Sed eu ullamcorper augue. Vivamus consequat id nisl vestibulum efficitur.<br>
						Suspendisse potenti. Mauris vel convallis quam.
					</div>
					<div class="buttonDiv">
						<button type="button" class="btn btn-success activateButton">Acivate</button>
					</div>
				</div>
				
				<div class="secondContent">
					<div class="titleText">
						Adipiscing amet consequat
					</div>
					<div class="subContent">
						<div class="card" style="width: 18rem;">
							<img class="card-img-top" src="https://via.placeholder.com/242x200" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
						<div class="card" style="width: 18rem;">
							<img class="card-img-top" src="https://via.placeholder.com/242x200" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
						<div class="card" style="width: 18rem;">
							<img class="card-img-top" src="https://via.placeholder.com/242x200" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="footerContent">
			</div>
		</div>
	</div>
	
	<!-- 하단 div -->
	<div class="footerDiv">
		
	</div>
</body>
</html>