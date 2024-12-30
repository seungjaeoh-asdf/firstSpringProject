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

.reservation-head {
	border-bottom: 1px solid #1abc9c;
}

.reservation-body {
	padding-top: 10px;
	min-height: 300px;
	font-size: 24px;
	font-family: "Nanum Pen Script", system-ui;
	font-weight: 400;
	font-style: normal;
}

.reservation-name {
	font-size: 20px;
}

.reservation-date {
	font-size: 20px;
	margin-left: 10px;
}

.name-date {
	display: flex;
	margin-left: 650px;
	margin-bottom: 10px;
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


	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<!-- 부트스트랩으로 padding-top 을 좀 주고자 한다. -->
		<div class="container pt-5">

			<!-- Contact Section Form-->
			<div class="row justify-content-center"  style="background-color: #FFFDD0; padding:10px; padding-top:30px; padding-bottom:30px;">
				<div class="col-lg-8 col-xl-7">
					<!-- 제목, 작성자, 작성일, 내용 -->
					<div>
						<div class="reservation-head">
							<div class="reservation-title" style="font-weight:bold; font-size:30px;">${reservation.reservationTitle }</div>
							<div class="name-date">
								<div class="reservation-name">${reservation.memName }</div>
								<div class="reservation-date">${reservation.reservationDate }</div>
							</div>
						</div>

						<pre class="reservation-body">
							${reservation.reservationContent}
						</pre>
				</div>
				<c:if test="${reservation.memId == sessionScope.login.memId }">
					<div style="display: flex;">
							<form action="${pageContext.request.contextPath }/reservationEditView"
								method="POST">
								<!-- 현재 페이지의 글번호를 /boardEditView에 같이 보냄 -->
								<input type="hidden" value="${reservation.reservationNo }" name="reservationNo">
								<button class="btn btn-warning me-2" type="submit">수정</button>
							</form>
							<form id="delForm"
								action="${pageContext.request.contextPath}/reservationDeleteDo"
								method="POST">
								<input type="hidden" value="${reservation.reservationNo }" name="reservationNo">
								<!-- 삭제버튼 클릭시 삭제확인 메시지를 띄움 -->
								<!-- JS에서 button에 클릭 이벤트 별도부여 -->
								<!-- botton의 타입을 button 으로 변경 클릭해도 submit 안됨 -->
								<button id="delBtn" class="btn btn-danger" type="button">삭제</button>
							</form>
					</div>
					
				</c:if>
				
				
				
				<c:if test="${sessionScope.login.memId == 'admin' }">
					<div style="display: flex;">
							<form action="${pageContext.request.contextPath }/yesReservationDo"
								method="POST" id="yesForm">
								<!-- 현재 페이지의 글번호를 /boardEditView에 같이 보냄 -->
								<input type="hidden" value="${reservation.reservationNo }" name="reservationNo">
								<button id="yesBtn" class="btn btn-warning me-2" type="button">승인</button>
							</form>
							<form action="${pageContext.request.contextPath}/noReservationDo"
								method="POST" id="noForm">
								<input type="hidden" value="${reservation.reservationNo }" name="reservationNo">
								<!-- 삭제버튼 클릭시 삭제확인 메시지를 띄움 -->
								<!-- JS에서 button에 클릭 이벤트 별도부여 -->
								<!-- botton의 타입을 button 으로 변경 클릭해도 submit 안됨 -->
								<button id="noBtn" class="btn btn-danger" type="button">거부</button>
							</form>
					</div>
				</c:if>


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
	
	<script type="text/javascript">
	const v_btn = document.getElementById("noBtn");
	const v_form = document.getElementById("noForm");
	
	v_btn.addEventListener("click", ()=>{
		if(confirm("정말로 거부하시겠습니까?")){
			v_form.submit();
		}
	});
	
	const v_btn2 = document.getElementById("yesBtn");
	const v_form2 = document.getElementById("yesForm");
	
	v_btn2.addEventListener("click", ()=>{
		if(confirm("정말로 승인하시겠습니까?")){
			v_form2.submit();
		}
	})
	
	
	
	</script>
</body>

</html>
