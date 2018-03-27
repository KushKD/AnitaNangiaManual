<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


<!-- Contact section
================================================== -->
<section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
			================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h3 class="wow bounceIn">Packages</h3>
				</div>
			</div>
			
			<!-- Contact form section
			================================================== -->
			<div class="col-md-offset-1 col-md-10 col-sm-12">
				<sf:form action="${pageContext.request.contextPath}/savepackage" method="post" commandName="packages" enctype="multipart/form-data" class="wow fadeInUp" data-wow-delay="0.6s">
					<div class="col-md-12 col-sm-12">
						<sf:input type="text" path="packagenamemc" class="form-control" placeholder="Enter Package Name" name="packagenamemc"></sf:input>
						<sf:errors path="packagenamemc" class="text-danger text-center"></sf:errors>
					</div>
					<div class="col-md-4 col-sm-12">
						<sf:input class="form-control" path="packagehashtag" placeholder="Enter HASH TAG"  name="packagehashtag"></sf:input>
						<sf:errors class="text-danger text-center" path="packagehashtag"></sf:errors>
					</div>
					
					<div class="col-md-4 col-sm-12">
						<sf:input class="form-control" path="packagerate" placeholder="Enter Package Rate"  name="packagerate"></sf:input>
						<sf:errors class="text-danger text-center" path="packagerate"></sf:errors>
					</div>
					
					<div class="col-md-4 col-sm-12">
						<sf:input class="form-control" path="packageregion" placeholder="Enter Region"  name="packageregion"></sf:input>
						<sf:errors class="text-danger text-center" path="packageregion"></sf:errors>
					</div>
					<div class="col-md-6 col-sm-12">
						<sf:textarea type="text" path="packageshortdesc" class="form-control" rows="7" placeholder="Enter Short Description" name="packageshortdesc"></sf:textarea>
						<sf:errors  class="text-danger text-center" path="packageshortdesc"></sf:errors>
					</div>
					<div class="col-md-6 col-sm-12">
						<sf:textarea type="text" path="packagelongdesc" class="form-control" rows="7" placeholder="Enter Package Long Description" name="packagelongdesc"></sf:textarea>
						<sf:errors class="text-danger text-center" path="packagelongdesc"></sf:errors>
					</div>
					<div class="col-md-6 col-sm-12">
						<sf:input type="file" path="packagethumbnailpic" class="form-control" placeholder="Select Image Thumb" name="packagethumbnailpic"></sf:input>
						<sf:errors class="text-danger text-center" path="packagethumbnailpic"></sf:errors>
					</div>
					<div class="col-md-6 col-sm-12">
						<sf:input type="file" path="packagethumbnailbigpic" class="form-control" placeholder="Select Image Big" name="packagethumbnailbigpic"></sf:input>
						<sf:errors class="text-danger text-center" path="packagethumbnailbigpic"></sf:errors>
					</div>
					 
					
					 
					
					 
					<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
						<input type="submit" class="form-control" value="Create Package">
					</div>
				</sf:form>
			</div>
			
			</div>
			</div>
			</section>