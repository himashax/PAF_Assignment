<%@ page import="com.dao.ResearcherDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">

<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/researchers.js"></script>

</head>
<body>

	<form id="formRes" name="formRes">
		res id <input type="text" id="resID" name="resID"/>
		first name<input type="text" id="firstName" name="firstName" />
		last name<input type="text" id="lastName" name="lastName"/>
		email<input type="text" id="email" name="email" />
		department<input type="text" id="dept" name="dept" />
		<input id="btnSave" name="btnSave" type="button" value="Save" 
 	class="btn btn-primary">
 	<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
	</form>

	<div id="divItemsGrid">
 <%
 ResearcherDAOImpl resDaoObj = new ResearcherDAOImpl(); 
 out.print(resDaoObj.listResearchers()); 
 %>
</div>
	

</body>
</html>