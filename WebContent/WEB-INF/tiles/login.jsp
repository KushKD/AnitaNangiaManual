<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<section class="col-lg-7 col-12 ml-auto main-content">
	
	<div class="home-page-posts animated fadeIn ">
		<article >

			<div class="post-preview col-12  no-gutter">

 <c:if test="${param.error !=null}">
  <p class="text-danger">Login failed !! Check that your user name and password are correct .</p>
 </c:if>


     
       
<form class="form-signin" name='f' action='${pageContext.request.contextPath}/login' method='POST'>

 <h2 class="form-signin-heading">Enter Username and Password</h2>
 <br> <br>
 <div class="row">
 <p class="col-lg-4" >Username:</p>  
 <input class="col-lg-8" style="font-size: 25px;" placeholder="Username" required autofocus type='text' name='username' value=''></input>
 </div>
	
	<div class="row">
	<p class="col-lg-4" >Password:</p> <input class="col-lg-8" style="font-size: 25px;" placeholder="Password" required autofocus type='password' name='password' >  </div>

	
	<div class="row">
	<input name="submit" class="btn btn-danger col-lg-12" type="submit" value="Login"/> </div>
	 <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
	 



</form>

</div>
</article>
</div>
</section>

