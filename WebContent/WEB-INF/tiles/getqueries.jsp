<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
   <section id="plan"></section>

<div class="container">
	<div class="row">
		
			<!-- Card Projects -->
			<div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 ">
				
				<table class="table table-bordered">
        <thead>
            <tr>
                <th class="text-center"><span class="text-primary">S.No</span></th>
                <th class="text-center"><span class="text-primary">Name</span></th>
                <th class="text-center"><span class="text-primary">Email</span></th>
                <th class="text-center"><span class="text-primary">Mobile</span></th>
                <th class="text-center"><span class="text-primary">Message</span></th>
                <th class="text-center"><span class="text-primary">Subject</span></th>
                <th class="text-center"><span class="text-primary">Date</span></th>
            </tr>
        </thead>
        <c:forEach items="${query}" var="o">
        <tbody>
        
            <tr>
                <td class="text-center"><span class="text-danger">${o.id}</span></td>
                <td class="text-center"><span class="text-danger">${o.name}</span></td>
                <td class="text-center"><span class="text-danger">${o.email}</span></td>
                <td class="text-center"><span class="text-danger">${o.mobile}</span></td>
                <td class="text-center"><span class="text-danger">${o.message}</span></td>
                <td class="text-center"><span class="text-danger">${o.subject}</span></td> 
                <td class="text-center"><span class="text-danger">${o.entryDate}</span></td>
            </tr>
           
        </tbody>
        	</c:forEach>
    </table>
				
				
				
				
				
				
			</div>

	


	</div>
</div>