<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="viewpatients.jsp"></jsp:include>
<h1>Patient Not Found Or Search for null values!</h1>
<%  
	response.setHeader("Refresh","1;URL=viewpatients.jsp");  
%> 
</body>
</html>