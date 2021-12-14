<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.PatientDao, com.dao.bean.Patient, java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String IC = request.getParameter("IC");
Patient p = PatientDao.getPatientByIC(IC);

if(p.getPatient_name()==null)
{
	response.sendRedirect("searchPatient-failed.jsp");
}
%>
<h1 align="center">Clinic Management System</h1>
<form action="searchPatient.jsp" method="post">
	<input type="search" name="IC" value="<%=request.getParameter("IC")%>"/>
	<input type="submit" value="search"/>
</form>
<a   type="button" href="viewpatients.jsp"><input style="float:right; margin-left:15px" type=button value="View All Patients">
</a>
<a  type="button" href="addPatientForm.jsp"><input style="float:right" type=button value="Add Patient">
</a>


<table border="1" width="100%">
	<tr>
		<th>Patient ID</th>
		<th>IC No.</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Phone</th>
		<th>Birthday</th>
		<th>Visit Date</th>
		<th>Prescriptions</th>
		<th>Covid-19 Test</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<tr>
		<td><%=p.getPatient_id() %></td>
		<td><%=p.getIC()%></td>
		<td><%=p.getPatient_name()%></td>
		<td><%=p.getGender()%></td>
		<td><%=p.getPhone_number()%></td>
		<td><%=p.getBirthday()%></td>
		<td><%=p.getDate()%></td>
		<td><%=p.getPrescriptions()%></td>
		<td><a href="addOrViewQuestionnaires.jsp?patient_id=<%=p.getPatient_id()%>">Click here</a></td>
		<td><a type="button" href="editform.jsp?patient_id=<%=p.getPatient_id()%>"><input type=button value="Edit"></a></td>
		<td><a type="button" href="deletepatient.jsp?patient_id=<%=p.getPatient_id()%>"><input type=button value="Delete"></a></td>
	</tr>
</table>

</body>
</html>