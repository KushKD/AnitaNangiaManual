<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
    
    
  
<!-- Contact section id="plan"
================================================== -->
<section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
			================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h5 class="wow bounceIn">PLAN YOUR TRIP</h5>
					<h1 class="heading">CONTACT US</h1>
					<hr>
					<p>Feel free to contact us. Its a promise that we'll get back to you within 24 hours.</p>
				</div>
			</div>

			<!-- Contact form section
			================================================== -->
			<div class="col-md-offset-1 col-md-10 col-sm-12">
				<sf:form action="${pageContext.request.contextPath}/getQuery" method="post" commandName="query" class="wow fadeInUp" data-wow-delay="0.6s">
					<div class="col-md-4 col-sm-6">
						<sf:input type="text" path="name" class="form-control" placeholder="Name" name="name"></sf:input>
						<sf:errors path="name" class="text-danger text-center"></sf:errors>
					</div>
					<div class="col-md-4 col-sm-6">
						<sf:input type="email" path="email" class="form-control" placeholder="Email" name="email"></sf:input>
						<sf:errors  class="text-danger text-center" path="email"></sf:errors>
					</div>
					<div class="col-md-4 col-sm-12">
						<sf:input type="text" path="mobile" class="form-control" placeholder="Mobile Number" name="mobile"></sf:input>
						<sf:errors class="text-danger text-center" path="mobile"></sf:errors>
					</div>
					<div class="col-md-4 col-sm-12">
						<sf:input type="text" path="country" class="form-control" placeholder="Country" name="country"></sf:input>
						<sf:errors class="text-danger text-center" path="country"></sf:errors>
					</div>
					<div class="col-md-8 col-sm-12">
						<sf:input type="text" path="subject" class="form-control" placeholder="Subject" name="subject"></sf:input>
						<sf:errors class="text-danger text-center" path="subject"></sf:errors>
					</div>
					<div class="col-md-12 col-sm-12">
						<sf:textarea class="form-control" path="message" placeholder="Message" rows="7" name="message"></sf:textarea>
						<sf:errors class="text-danger text-center" path="message"></sf:errors>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
						<input type="submit" class="form-control" value="SHOOT MESSAGE">
					</div>
				</sf:form>
			</div>

			<!-- Contact detail section
			================================================== -->
			<div class="contact-detail col-md-12 col-sm-12">
				<div class="col-md-6 col-sm-6">
					<h3><i class="icon-envelope medium-icon wow bounceIn" data-wow-delay="0.6s"></i> EMAIL</h3>
					<p ><span class="text-danger">yogitaraj.sharma4591@gmail.com </span> </p>
					<p><span class="text-danger">rohit.rohitsharma.sharma13@gmail.com</span></p>
				</div>
				<div class="col-md-6 col-sm-6">
					<h3><i class="icon-phone medium-icon wow bounceIn" data-wow-delay="0.6s"></i> PHONES</h3>
					<p>9418653286 | 9816143412</p>
				</div>
			</div>

		</div>
	</div>
</section>