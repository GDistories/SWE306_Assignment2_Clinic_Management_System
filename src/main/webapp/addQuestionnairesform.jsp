<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.QuestionnairesDao, com.dao.bean.Questionnaires, com.dao.PatientDao, com.dao.bean.Patient" %>

<h1>Add Questionnaire</h1>
<%
String patient_id = request.getParameter("patient_id");
Patient p = PatientDao.getPatientByPatientId(Integer.parseInt(patient_id)); 
%>

<form onsubmit="return validate();" action="addQuestionnaires.jsp" method="post">
<input type="hidden" name="patient_id" value="<%=request.getParameter("patient_id")%>">
<table>
	<tr>
		<td>Patient Name: <%=p.getPatient_name() %></td>
	</tr>
	<tr>
		<td>Patient IC No. : <%=p.getIC() %></td>
	</tr>
	<tr>
		<td><br></td>
	</tr>
	
	<tr>
		<td>1. Choice of your swab test:</td>
	</tr>
	<tr>
		<td><input type="radio" name="choice" value="Antigen Rapid Test Kit (RTK)" style="margin-left:18px;">a) Antigen Rapid Test Kit (RTK)</td>
	</tr>
	<tr>
		<td><input type="radio" name="choice" value="Polymerase Chain Reaction Test (PCR)" style="margin-left:18px; margin-bottom:30px">b) Polymerase Chain Reaction Test (PCR)</td>
	</tr>
	
	
	<tr>
		<td>2. Are you vaccinated?</td>
	</tr>
	<tr>
		<td><input type="radio" name="vaccinated" value="Fully Vaccinated" style="margin-left:18px">a) Fully Vaccinated</td>
	</tr>
	<tr>
		<td><input type="radio" name="vaccinated" value="Partially Vaccinate" style="margin-left:18px">b) Partially Vaccinate</td>
	</tr>
	<tr>
		<td><input type="radio" name="vaccinated" value="None" style="margin-left:18px; margin-bottom:30px">c) None</td>
	</tr>
	
	
	<tr>
		<td>3. Are you exhibiting two or more symptoms:</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Fever" style="margin-left:18px">a) Fever</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Cough" style="margin-left:18px">b) Cough</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Body ache" style="margin-left:18px">c) Body ache</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Headache" style="margin-left:18px">d) Headache</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Sore throat" style="margin-left:18px">e) Sore throat</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Fatigue" style="margin-left:18px">f) Fatigue</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="None" style="margin-left:18px; margin-bottom:30px">g) None</td>
	</tr>
		
	
	<tr>
		<td>4. Have you attended any areas associated with known COVID-19 clusters:</td>
	</tr>
	<tr>
		<td><input type="radio" name="clusters" value="Yes" style="margin-left:18px">a) Yes</td>
	</tr>
	<tr>
		<td><input type="radio" name="clusters" value="No" style="margin-left:18px; margin-bottom:30px">b) No</td>
	</tr>
	
	<tr>
		<td></td>
	</tr>
	
	<tr>
		<td>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14 days?</td>
	</tr>
	<tr>
		<td><input type="radio" name="close_contact" value="Yes" style="margin-left:18px">a) Yes</td>
	</tr>
	<tr>
		<td><input type="radio" name="close_contact" value="No" style="margin-left:18px; margin-bottom:30px">b) No</td>
	</tr>
	
	<tr>
		<td><input type="submit" value="Submit" style="margin-right:10px"/><a type="button" href="viewpatients.jsp"><input type=button value="Back to View Patient "></a></td>
		
	</tr>	
</table>
</form>
<script src="addQuestionnaires.js"></script>
</body>
</html>