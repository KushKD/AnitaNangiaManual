<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	
<section class="col-lg-7 col-12 ml-auto main-content">
		<div class="sub-nav">
			<a href="#" class="select-posts active">Posts</a> 
		</div>

		<div class="home-page-posts animated fadeIn ">
			<c:forEach items="${posts}" var="postDb">
				<article class="post">

					<div class="post-preview col-10  no-gutter">
						<h2>
							<a href="#">${postDb.title}</a>
						</h2>

						<!--  <p class="col-10 no-gutter">${postDb.content}</p>    -->

						<p class="meta col-10 no-gutter">
							<a href="#">${postDb.hashtag}</a> <i class="link-spacer"></i> <i
								class="fa fa-bookmark"></i> ${postDb.estimatereadingtime} read
						</p>


						<a
							href="${pageContext.request.contextPath}/static/documents/pdf/${postDb.pdfname}"
							class="btn btn-info col-lg-4 col-md-4col-xs-4 col-sm-4 text-center">View
							PDF</a>


					</div>

					<div class=" col-2  no-gutter">
						<!--   <img src="${pageContext.request.contextPath}/static/images/profile-1.jpg" class="user-icon" alt="user-image">  -->
						<i class="link-spacer"></i>
						<h4>
							<i class="fa fa-bookmark"></i> &nbsp;${postDb.category}
						</h4>

					</div>

				</article>
			</c:forEach>

		</div>
		<!-- Home page posts -->

		
		<footer class="split-footer">
			<a href="#">About</a> <i class="link-spacer"></i> <a href="#">
				Dr. Anita Nangia 2018</a> 
		</footer>
	</section>
	<!-- main content -->

	

	