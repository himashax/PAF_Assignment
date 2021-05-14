<%@ page import="com.dao.ResearcherDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Researcher</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">

<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/researchers.js"></script>

</head>

<body>


<div class="container">

<br>
<h2>Researcher Management</h2>
<br>

	<form id="formRes" name="formRes">
	<div class="form-group">
	
	<div class="form-row">
		<div class="col-md-2">
		Researcher ID <input type="text" id="resID" name="resID" class="form-control form-control-sm"/></div>
		
		<div class="col-md-2">
		First Name<input type="text" id="firstName" name="firstName" class="form-control form-control-sm"/></div>
		
		<div class="col-md-2">
		Last Name<input type="text" id="lastName" name="lastName" class="form-control form-control-sm"/></div>
	
		<div class="col-md-3">
		Email<input type="text" id="email" name="email" class="form-control form-control-sm"/></div>
		
		<div class="col-md-2">
		Department<input type="text" id="dept" name="dept" class="form-control form-control-sm" /></div>
		
		<div class="col-md-1">
		<br>
		<input id="btnSave" name="btnSave" type="button" value="Save" class="form-control btn btn-sm btn-primary"></div>
 		<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
 	
 	</div>	
 	</div>
	</form>

	<br>
	<div id="alertSuccess" class="alert alert-success"></div>
	<div id="alertError" class="alert alert-danger"></div>
	

	<br>

	<div id="divItemsGrid" >
    <%
          ResearcherDAOImpl resDaoObj = new ResearcherDAOImpl(); 
          out.print(resDaoObj.listResearchers()); 
    %>
	</div>



</div>
	

</body>
</html>