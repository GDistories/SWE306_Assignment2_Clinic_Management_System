<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.QuestionnairesDao, com.dao.bean.Questionnaires" %>

<h1>Add Questionnaire</h1>

<form action="addQuestionnaires.jsp" method="post">
<input type="hidden" name="patient_id" value="<%=request.getParameter("patient_id")%>">
<table >
	<tr border="1" width="100%">
		<td>1. Choice of your swab test:</td>
	</tr>
	<tr>
		<td><input type="radio" name="choice" value="Antigen Rapid Test Kit (RTK)">a) Antigen Rapid Test Kit (RTK)</td>
		<td><input type="radio" name="choice" value="Polymerase Chain Reaction Test (PCR)">b) Polymerase Chain Reaction Test (PCR)</td>
	</tr>
	<tr>
		<td>2. Are you vaccinated?</td>
	</tr>
	<tr>
		<td><input type="radio" name="vaccinated" value="Fully Vaccinated">a) Fully Vaccinated</td>
		<td><input type="radio" name="vaccinated" value="Partially Vaccinate">b) Partially Vaccinate</td>
		<td><input type="radio" name="vaccinated" value="None">c) None</td>
	</tr>
	<tr>
		<td>3. Are you exhibiting two or more symptoms:</td>
	</tr>
	<tr>
		<td><input type="checkbox" name="symptoms" value="Fever">a) Fever</td>
		<td><input type="checkbox" name="symptoms" value="Cough">b) Cough</td>
		<td><input type="checkbox" name="symptoms" value="Body ache">c) Body ache</td>
		<td><input type="checkbox" name="symptoms" value="Headache">d) Headache</td>
		<td><input type="checkbox" name="symptoms" value="Sore throat">e) Sore throat</td>
		<td><input type="checkbox" name="symptoms" value="Fatigue">f) Fatigue</td>
	</tr>
	<tr>
		<td>4. Have you attended any areas associated with known COVID-19 clusters:</td>
	</tr>
	<tr>
		<td><input type="radio" name="clusters" value="Yes">a) Yes</td>
		<td><input type="radio" name="clusters" value="No">b) No</td>
	</tr>
	<tr>
		<td>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14 days?</td>
	</tr>
	<tr>
		<td><input type="radio" name="close_contact" value="Yes">a) Yes</td>
		<td><input type="radio" name="close_contact" value="No">b) No</td>
	</tr>
	
	<tr>
		<td colspan="3"><input type="submit" value="Add Questionnaire"/></td>
	</tr>	
</table>
</form>
</body>
</html>