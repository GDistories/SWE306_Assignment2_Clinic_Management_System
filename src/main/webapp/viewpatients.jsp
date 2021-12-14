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

<h1>Clinic Management System</h1>
<%
List<Patient>list = PatientDao.getAllPatients();
request.setAttribute("list", list);
%>
<form action="searchPatient.jsp" method="post">
	<input type="search" name="IC" placeholder="Search patient by IC"/>
	<input type="submit" value="search"/>
</form>
<a href="viewpatients.jsp">View All Patients</a>
<a href="addPatientForm.jsp">Add Patient</a>


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

<c:forEach items="${list}" var="p">
	<tr>
		<td>${p.getPatient_id()}</td>
		<td>${p.getIC()}</td>
		<td>${p.getPatient_name()}</td>
		<td>${p.getGender()}</td>
		<td>${p.getPhone_number()}</td>
		<td>${p.getBirthday()}</td>
		<td>${p.getDate()}</td>
		<td>${p.getPrescriptions()}</td>
		<td><a href="addOrViewQuestionnaires.jsp?patient_id=${p.getPatient_id()}">Click here</a></td>
		<td><a href="editform.jsp?patient_id=${p.getPatient_id()}">Edit</a></td>
		<td><a href="deletepatient.jsp?patient_id=${p.getPatient_id()}">Delete</a></td>
	</tr>
</c:forEach>
</table>

</body>
</html>