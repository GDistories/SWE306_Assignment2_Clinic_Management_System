<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.PatientDao" %>

<jsp:useBean id="p" class="com.dao.bean.Patient"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%
int i=PatientDao.update(p);
if(i>0)
	response.sendRedirect("editPatient-success.jsp");
else{
	response.sendRedirect("editPatient-failed.jsp");
}
%>
</body>
</html>