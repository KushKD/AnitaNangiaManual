<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>Anita Nangia </title>
	<meta name="keywords" content="English, M.Ed , B.ED , Chandigarh , Dev Samaj Collage , HPU , Shimla, PHD, Doctor ">
	<meta name="description" content="English">
	<meta name="description" content="M.Ed">
	<meta name="description" content="Philosophy">
	<meta name="description" content="B.Ed">
	<meta name="description" content="Dev Samaj Collage">
	<meta name="description" content="HPU">
	<meta name="description" content="Shimla">
	<meta name="description" content="PHD">
	<meta name="description" content="Sector 16">
	<meta name="description" content="India">
    <meta name="viewport" content="width=device-width, initial-scale=1">


	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
	
	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
	
   	<!-- Main CSS
   	================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ionicons.min.css">

	
	<!-- if the user has javascript disabled they can still use the menu -->
	 
	 <noscript>
		<div class="no-js-menu">
			<ul>
				<li><i class="fa fa-home"></i><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li><i class="fa fa-user"></i><a href="#">Anita Nangia</a></li>
				  <li><i class="fa fa-anchor"></i><a href="#">The Project</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="#">Contact</a></li>
				<li><i class="fa fa-file"></i><a href="${pageContext.request.contextPath}/">All Posts</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="${pageContext.request.contextPath}/med">M.ED
						Content</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="${pageContext.request.contextPath}/bed">B.ED
						Content</a></li>
			</ul>
		</div>
	</noscript>  
	
	<!-- end no script -->

	<main class="container left-container"> 
<div class="row">
		<div id="menu-target">
			<ul>
				<li><i class="fa fa-home"></i><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li><i class="fa fa-user"></i><a href="#">Anita Nangia</a></li>
				  <li><i class="fa fa-anchor"></i><a href="#">The Project</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="#">Contact</a></li>
			</ul>
			<hr>
			<ul>
				<li><i class="fa fa-file"></i><a href="${pageContext.request.contextPath}/">All Posts</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="${pageContext.request.contextPath}/med">M.ED Content</a></li>
				<li><i class="fa fa-paper-plane"></i><a href="${pageContext.request.contextPath}/bed">B.ED Content</a></li>
			
			</ul>
			<hr>
			<ul>
			<li><i class="fa fa-sign-out"></i><a  href="${pageContext.request.contextPath}/logout">Sign Out 
						</a></li></ul>
						
						<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
						<hr>
						
						<ul>
						<li><i class="fa fa-user"></i><a  href="#">Admin Panel </a></li>
			<li><i class="fa fa-pagelines"></i><a  href="${pageContext.request.contextPath}/createpost">Create Post
						</a></li></ul>
						</sec:authorize>
		</div>  

	<section class="sidebar col-lg-5 col-12"
		style="background-image: url(${pageContext.request.contextPath}/static/images/default-sidebar.png">


 <sec:authorize access="isAuthenticated()">
		  <span class="menu-trigger animated fadeInDown"> <span
			class="bar"></span> <span class="bar"></span> <span class="bar"></span>
			
		</span>  </sec:authorize>

		<div class="site-info">
			<div class="primary-info">
				<h1>Anita Nangia</h1>
				<p>
					The English language is nobody's special property. It is the
					property of the imagination: it is the property of the language
					itself.
				</p>

			</div>
			
		</div>
	</section>
	
	
