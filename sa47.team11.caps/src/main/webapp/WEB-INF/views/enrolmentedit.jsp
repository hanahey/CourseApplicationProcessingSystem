<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<form:form class="form-horizontal" method="POST" modelAttribute="studentenrol"
action="${pageContext.request.contextPath}/enrol/edit/${studentenrol.getUser().getUserid()}/${studentenrol.getCourse().getCourseid()}.html" >

<center><h3>Student Enrollment Details</h3></center><br>

            <div class="form-group">
            <div align = "left"><label class="control-label col-sm-2" ><spring:message code="fieldLabel.enrollmentID"/>
            </label></div> 
      <div class="col-sm-4">
     <form:input path="studentEnrolId" class="form-control" readonly="true" />
      </div>
    </div>
      
      <div class="form-group">
      <label class="control-label col-sm-2">Student ID</label>
       <div class="col-sm-4">
       <input value="${studentenrol.getUser().getUserid()}" class="form-control" readonly />
      </div>
    </div>
      
      <div class="form-group">
      <label class="control-label col-sm-2">Student Name</label>
       <div class="col-sm-4">
       <input value="${studentenrol.getUser().getFirstMidName()} ${studentenrol.getUser().getLastName()}" class="form-control" readonly />
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2"><spring:message code="label.course.id"/></label>
       <div class="col-sm-4">
       <input value="${studentenrol.getCourse().getCourseid()}" class="form-control" readonly />
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2"><spring:message code="label.course.name"/></label>
       <div class="col-sm-4">
       <input value="${studentenrol.getCourse().getCourseName()}" class="form-control" readonly />
      </div>
    </div>    
    
        <div class="form-group">
      <label class="control-label col-sm-2" for="dateRegistered">
      	Registration Date
      </label>
      <div class="col-sm-4">
     <form:input path="dateRegistered" class="form-control" readonly="true" />
      </div>
    </div>
    
    
    <div class="form-group ">
      <label class="control-label col-sm-2" for="statusEnroll">
		Status of Enrolment
	</label>
      <div class="col-sm-4 md-form amber-textarea active-amber-textarea">          
       <!--  <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"> -->
      <%-- 	<form:textarea path="statusEnroll" class="md-textarea form-control z-depth-1" row="10"></form:textarea> --%>
      	<form:radiobutton path="statusEnroll" value="successful" label="successful" />
				<form:radiobutton path="statusEnroll" value="unsuccessful" label="unsuccessful" />
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Update</form:button>
      </div>
    </div>
  

  </form:form>

