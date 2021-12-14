<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.PatientDao, com.dao.bean.Patient" %>

<%
String patient_id = request.getParameter("patient_id");
Patient p = PatientDao.getPatientByPatientId(Integer.parseInt(patient_id));
%>
<h1>Edit Patient Information</h1>

<form onsubmit="return validate();" action="editPatient.jsp" method="post">
	<input type="hidden" name="patient_id" value="<%=p.getPatient_id()%>">
	<table>
		<tr>
			<td>IC No.:</td>
			<td><input type="text" name="IC" value="<%=p.getIC()%>" id="IC"></td>
		</tr>
		<tr>
			<td>Patient Name:</td>
			<td><input type="text" name="patient_name" value="<%=p.getPatient_name()%>" id="patient_name"/></td>
		</tr>
		<tr>
			<td>Patient Gender:</td>
			<td><input type="radio" name="gender" value="Male" <%if(p.getGender().equals("Male")) out.print("checked");%>>Male</td>
			<td><input type="radio" name="gender" value="Female" <%if(p.getGender().equals("Female")) out.print("checked");%>>Female</td>
		</tr>
		<tr>
			<td>Patient Birthday:</td>
			<td><input type="date" name="birthday" value="<%=p.getBirthday()%>" id="birthday"></td>
		</tr>
		<tr>
			<td>Patient Phone Number:</td>
			<td><input type="tel" name="phone_number" value="<%=p.getPhone_number()%>" id="phone_number"></td>
		</tr>
		<tr>
			<td>Patient Visit Date:</td>
			<td><input type="date" name="date" value="<%=p.getDate()%>" id="date"></td>
		</tr>
		<tr>
			<td>Patient Prescriptions:</td>
			<td>
			<select name="prescriptions">
				<option <%if(p.getPrescriptions().equals("Not Tested")) out.print("selected");%>>Not Tested</option>
				<option <%if(p.getPrescriptions().equals("Positive")) out.print("selected");%>>Positive</option>
				<option <%if(p.getPrescriptions().equals("Negative")) out.print("selected");%>>Negative</option>
			</select>
			</td>
		</tr>
				
		<tr>
			<td colspan="3"><input type="submit" value="Edit Patient"/></td>
		</tr>	
		
	</table>
</form>
<a href="viewpatients.jsp">Back to view patients page</a>
<script src="editPatient.js"></script>
</body>
</html>