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


	
<!-- Contact-->
<section class="page-section" id="contact">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0" style="color:white">회원가입</h2>
				<hr class="divider" />
				<p class="mb-5"  style="color:white; font-size : 30px" >회원가입을 통해 여러가지 할인혜택을 받아보세요!</p>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
			<div class="col-lg-6">
				<!-- * * * * * * * * * * * * * * *-->
				<!-- * * SB Forms Contact Form * *-->
				<!-- * * * * * * * * * * * * * * *-->
				<!-- This form is pre-integrated with SB Forms.-->
				<!-- To make this form functional, sign up at-->
				<!-- https://startbootstrap.com/solution/contact-forms-->
				<!-- to get an API token!-->
				<form id="contactForm" action="${pageContext.request.contextPath }/registDo" method="post" data-sb-form-api-token="API_TOKEN">
					<!-- 닉네임 input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="name" type="text" name="name"
							 data-sb-validations="required" />
						<label for="name">닉네임</label>
						<div class="invalid-feedback" data-sb-feedback="name:required">A
							name is required.</div>
					</div>
					<!-- 아이디 input -->
					<div class="form-floating mb-3">
						<input class="form-control" id="id" type="text" name="id"
							 data-sb-validations="required" />
						<label for="name">아이디</label>

					</div>
					<!-- 비밀번호 input -->
					<div class="form-floating mb-3">
						<input class="form-control" id="password" type="password" name="password"
							 data-sb-validations="required" />
						<label for="name">비밀번호</label>

					</div>
					<!-- 전번 input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="phone" type="tel" name ="phone"
							 data-sb-validations="required" /> <label
							for="phone">휴대전화</label>
					</div>
					
					<!-- 이메일 input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="email" type="email" name="email"
							
							data-sb-validations="required,email" /> <label for="email">이메일</label>
					</div>
					
					
					

					<!-- Submit success message-->
					<!---->
					<!-- This is what your users will see when the form-->
					<!-- has successfully submitted-->
					<div class="d-none" id="submitSuccessMessage">
						<div class="text-center mb-3">
							<div class="fw-bolder">Form submission successful!</div>
							To activate this form, sign up at <br /> <a
								href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
						</div>
					</div>
					<!-- Submit error message-->
					<!---->
					<!-- This is what your users will see when there is-->
					<!-- an error submitting the form-->
					<div class="d-none" id="submitErrorMessage">
						<div class="text-center text-danger mb-3">Error sending
							message!</div>
					</div>
					<!-- Submit Button-->
					<div class="d-grid">
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-4 text-center mb-5 mb-lg-0">
				<i class="bi-phone fs-2 mb-3 text-muted"></i>
				<div>+1 (555) 123-4567</div>
			</div>
		</div>
	</div>
</section>
</html>
