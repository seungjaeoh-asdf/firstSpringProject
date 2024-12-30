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


	<!-- 게시판섹션 -->
	<section class="page-section" id="contact">

		<div class="container pt-5"  style="background-color: #FFFDD0; padding:10px; padding-top:30px; padding-bottom:30px;">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0 pd-2" style="color:white; ">예약 게시판</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
		 		<div class="col-lg-8 col-xl-7">
		 			
		 		
					<!-- 게시글 그리기(table) -->
					<table class="table table-hover">
					  <thead>
					    <tr>
					      <th scope="col">글번호</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">작성일</th>
					      <th scope="col">승인여부</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach items="${keyReservationList }"  var="reservation"  >
						    <tr>
						      <td scope="row">${reservation.reservationNo }</td>
						      <td>
						      	<!-- 글 제목 클릭시 /reservationDetailView?no=글번호 형태로 요청 -->
						      	<a style="text-decoration:none;" href="${pageContext.request.contextPath }/reservationDetailView?reservationNo=${reservation.reservationNo }">
							      ${reservation.reservationTitle }
						      	</a>
						      </td>
						      <td>${reservation.memName }</td>
						      <td>${reservation.reservationDate }</td>
						      
						      <c:if test="${reservation.reserveYn == 'wait'}">
						      	<td>승인대기중</td>
						      </c:if>
						      
						      <c:if test="${reservation.reserveYn == 'Y'}">
						      	<td>예약승인됨</td>
						      </c:if>
						      
						      <c:if test="${reservation.reserveYn == 'N'}">
						      	<td>예약반려됨</td>
						      </c:if>
						      
						    </tr>
					  	</c:forEach>
					    
					  </tbody>
					</table>
					
					<!-- 글쓰기 버튼 -->
					<div class="d-flex justify-content-end">
						<button id="writeBtn" class="btn btn-primary" href="${pageContext.request.contextPath }/reservationWriteView">예약하기</button>
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
	
	<script type="text/javascript">
	
	document.getElementById("writeBtn").addEventListener("click", ()=>{
		
		let v_id = '${sessionScope.login.memId }';
		
		console.log(v_id);
		
		
		if(v_id){
			// 로그인 상태 -> 글쓰기 화면으로 이동
			location.href = '${pageContext.request.contextPath }/reservationWriteView';
		}else{
			// 로그인 안된 상태 -> 알림을 띄운 후 글쓰기 화면으로 이동
			alert('로그인 후 글쓰기가 가능합니다.');
			location.href = '${pageContext.request.contextPath }/loginView';
		}
		
	});
	
	
	
	
	
	
	
	
	
	
	</script>
	
	
	
	
</body>

</html>
