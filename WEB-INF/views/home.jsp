<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
*{
  font-family: "Nanum Pen Script", cursive;
  font-weight: 400;
  font-style: normal;
  
}

</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Business Casual - Start Bootstrap Theme</title>
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath }/css/styles.css"
	rel="stylesheet" />
</head>
<body>



	<!-- header+navigation 섹션 -->

	<%@ include file="/WEB-INF/inc/header_navigation.jsp"%>


	<section class="page-section clearfix">
		<div class="container">
			<div class="intro">
				<img class="intro-img img-fluid mb-3 mb-lg-0 rounded"
					src="${pageContext.request.contextPath }/assets/img/cafe.jpg"
					alt="..." />
				<div class="intro-text left-0 text-center bg-faded p-5 rounded">
					<h2 class="section-heading mb-4">
						<span class="section-heading-upper">Spring coffee</span> <span
							class="section-heading-lower">Worth Drinking</span>
					</h2>
					<p class="mb-3">우리의 고품질 수제 커피는 지역에서 재배되고 손으로 직접 고른 재료로 시작됩니다.
					 한 번 맛보면, 매일 아침을 기분 좋게 시작하는 데 없어서는 안 될 존재가 될 것입니다. 저희가 보장합니다!</p>
					<div class="intro-button mx-auto">
						<a class="btn btn-primary btn-xl" href="#!">Visit Us Today!</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner bg-faded text-center rounded">
						<h2 class="section-heading mb-4">
							<span class="section-heading-upper">우리의 약속</span> <span
								class="section-heading-lower">To You</span>
						</h2>
						<p class="mb-0">고객님께서 저희 가게에 방문하시는 순간부터, 저희는 친절한 서비스, 따뜻한 분위기, 그리고 무엇보다 최고 품질의 재료로 만든 우수한 제품을 제공하는 데 최선을 다하겠습니다. 만족하지 않으셨다면,
						 언제든지 말씀해 주세요. 저희는 고객님의 만족을 위해 최선을 다해 문제를 해결하겠습니다!!</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; Your Website 2023</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>

</html>
