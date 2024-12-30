<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<header>
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
                <span class="site-heading-upper text-primary mb-3">Free Style coffee</span>
                <span class="site-heading-lower">Spring 커피</span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.html">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }">Home</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/drinkReply">메뉴</a></li>
                        
                        <c:if test="${sessionScope.login == null }">
                        	<li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/loginView">로그인</a></li>
                        	<li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/registView">회원가입</a></li>
                        </c:if>
                        <c:if test="${sessionScope.login != null }">
                        	<li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/memberEditView">${sessionScope.login.memName }님</a></li>
                        	<li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/reservationView">예약</a></li>
                        	<li class="nav-item px-lg-4"><a class="nav-link text-uppercase" style="font-size:30px" href="${pageContext.request.contextPath }/logoutDo">로그아웃</a></li>
                        </c:if>
                        
                    </ul>
                </div>
            </div>
        </nav>