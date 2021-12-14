<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Unknown Problem!</h1>
<h2>You will be redirected to the login page in 3 seconds!</h2>
<%  
	response.setHeader("Refresh","3;URL=loginpage.jsp");  
%>  
</body>
</html>