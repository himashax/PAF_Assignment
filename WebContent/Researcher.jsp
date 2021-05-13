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

<h1>Researcher Management</h1>

<body>
<div class="container">

	<form id="formRes" name="formRes">
		Researcher ID <input type="text" id="resID" name="resID"/>
		First Name<input type="text" id="firstName" name="firstName" />
		Last Name<input type="text" id="lastName" name="lastName"/>
		Email<input type="text" id="email" name="email" />
		Department<input type="text" id="dept" name="dept" />
		<input id="btnSave" name="btnSave" type="button" value="Save" 
 	    class="btn btn-primary">
 	<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
	</form>

	<br>
	<div id="alertSuccess" class="alert alert-success"></div>
	<div id="alertError" class="alert alert-danger"></div>

	<div id="divItemsGrid">
    <%
          ResearcherDAOImpl resDaoObj = new ResearcherDAOImpl(); 
          out.print(resDaoObj.listResearchers()); 
    %>
</div>
	
</div>
</body>
</html>