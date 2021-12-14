<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Success!</h1>
<jsp:include page="viewpatients.jsp"></jsp:include>
<%  
	response.setHeader("Refresh","2;URL=viewpatients.jsp");  
%> 
</body>
</html>