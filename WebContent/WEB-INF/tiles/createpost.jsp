<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>



<section class="col-lg-7 col-12 ml-auto main-content">
	<div class="sub-nav">
		<a href="#" class="select-posts active">Create Post</a>
	</div>

	<div class="home-page-posts animated fadeIn ">
		<article class="post">

			<div class="post-preview col-12  no-gutter">
			
			

				<sf:form action="${pageContext.request.contextPath}/submitpost"
					commandName="posts" method="post" enctype="multipart/form-data">



<div class="row">
					<p class=" text-center col-lg-12 "
						style="font-family: sans-serif; font-size: 20px; font-weight: bold; background-color:#8b0000;  color: white;">
						Create a New Post !!</p>
						</div>
						
					<div class="row" style="margin-bottom: 5px;">	
						
			<p class="col-lg-4" >Enter Post Title </p> 
			<sf:textarea class="col-lg-8" style="font-size: 25px;" type="text" name="title" path="title" /> <sf:errors style="font-size:20px; color:red;" path="title"></sf:errors>
					
					</div>
					
					<div class="row" style="margin-bottom: 5px;">	
			<p class="col-lg-4" > Enter Post Category</p>
			 <sf:textarea class="col-lg-8" style="font-size: 25px;" type="text" name="category" path="category" /> <sf:errors style="font-size:20px; color:red;" path="category"></sf:errors> 
					
					</div>
					
					
					<div class="row" style="margin-bottom: 5px;">	
			<p class="col-lg-4" >Enter Post HashTag</p> 
			<sf:textarea class="col-lg-8" style="font-size: 25px;" type="text"  name="hashtag" path="hashtag" />
					<sf:errors path="hashtag" style="font-size:20px; color:red;"></sf:errors>
					
					
					</div>
					
					
					<div class="row" style="margin-bottom: 5px;">	
			<p class="col-lg-4" >
					 Enter Post Estimate Reading Time </p>
			<sf:textarea class="col-lg-8" style="font-size: 25px;" type="text"  name="estimatereadingtime"
						path="estimatereadingtime" />
					<sf:errors path="estimatereadingtime" style="font-size:20px; color:red;"></sf:errors>
					</div>
					
					
					
						<div class="row" style="margin-bottom: 5px;" >	
			<p class="col-lg-4" >
					 Select Document </p>
					 <sf:input class="col-lg-8" style="font-size: 25px;"
						type="file" name="pdfFile" path="pdfFile" />
					<sf:errors path="pdfFile" style="font-size:20px; color:red;"></sf:errors>
					
					</div>

					<input type="submit" class="btn btn-danger col-lg-12"
						value="Submit">
					<!--  
			Enter Post Document Name
			<sf:input type="text" name="pdfname" path="pdfname" />
			<sf:errors path="pdfname"></sf:errors>
			Enter Post Content
			<sf:input type="text" name="content" path="content" />
			<sf:errors path="content"></sf:errors>
			Enter Post Content Big
			<sf:input type="text" name="contentBig" path="contentBig" />
			<sf:errors path="contentBig"></sf:errors>
			Enter Post Author
			<sf:input type="text" name="author" path="author" />
			<sf:errors path="author"></sf:errors>
-->


				</sf:form>
			</div>



		</article>

	</div>


</section>







