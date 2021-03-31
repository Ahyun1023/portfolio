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
<link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/home.css'/>"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script>
	$(document).ready(function(){
		$('.middleDiv').fadeIn(1500);
		
		sleep(2000).then(() =>
			$('.nextScrollDiv').animate({
				opacity: 1
			})
		);
		
		$('.subContent').slick({
			slidesToShow: 3,
			prevArrow : $('.prev'),
			nextArrow : $('.next')
		});
		/*$('.subContent').slick({
			/*centerMode: true,
  			centerPadding: '60px',
  			slidesToShow: 3,
			infinite: true,
			speed: 500,
			fade: true,
			arrows: true,
			cssEase: 'linear',
			nextArrow:$('.next'),
			prevArrow:$('.prev')
		});*/
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
							<a class="nav-link upperMenu" href="#">Services</a>
						</li>
						<li class="nav-item">
							<a class="nav-link upperMenu" href="#">Contact</a>
						</li>
					</ul>
			
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<input class="form-control form-control-sm searchBar" type="text" placeholder="Search..." />
						</li>
						<li class="nav-item">
							<button class="btn btn-outline-light btn-sm searchButton" type="submit">Search</button>
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
				<!-- 첫번째 content  -->
				<div class="firstContent">
					<div class="titleText">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
						Quisque nec vehicula tellus. Sed eu ullamcorper augue.
					</div>
					<div class="subTitleText">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec vehicula tellus.<br>
						Sed eu ullamcorper augue. Vivamus consequat id nisl vestibulum efficitur.<br>
						Suspendisse potenti. Mauris vel convallis quam.
					</div>
					<div class="buttonDiv">
						<button type="button" class="btn btn-success activateButton">Acivate</button>
					</div>
				</div>
				
				<!-- 두번째 content -->
				<div class="secondContent">
					<div class="titleText">
						Adipiscing amet consequat
					</div>
					<div class="subTitleText">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec vehicula tellus.
					</div>
					<div class="slideDiv">
						<i class="fa fa-3x fa-chevron-left prev"></i>
						<div class="subContent">
							<div class="card">
								<img class="card-img-top img" src="<c:url value='/resources/image/sq_city1.jpg'/>" alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
							<div class="card">
								<img class="card-img-top img"
									src="<c:url value='/resources/image/sq_city2.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
							<div class="card">
								<img class="card-img-top img"
									src="<c:url value='/resources/image/sq_city3.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
							<div class="card">
								<img class="card-img-top img"
									src="<c:url value='/resources/image/sq_city4.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
							<div class="card">
								<img class="card-img-top img"
									src="<c:url value='/resources/image/sq_city5.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
							<div class="card">
								<img class="card-img-top img"
									src="<c:url value='/resources/image/sq_city6.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
						</div>
						<i class="fa fa-3x fa-chevron-right next"></i>
					</div>
				</div>
			</div>
			
			<!-- 세번째 content -->
			<div class="footerContent">

			</div>

			<!-- 하단 div -->
			<div class="endDiv">
				<div class="endIcons">
					<i class="fa fa-2x fa-instagram endIcon" aria-hidden="true"></i>
					<i class="fa fa-2x fa-facebook-official endIcon" aria-hidden="true"></i>
					<i class="fa fa-2x fa-github endIcon" aria-hidden="true"></i>
					<i class="fa fa-2x fa-envelope endIcon" aria-hidden="true"></i>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>