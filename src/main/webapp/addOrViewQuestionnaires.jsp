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

<jsp:useBean id="q" class="com.dao.bean.Questionnaires"></jsp:useBean>
<jsp:setProperty property="*" name="q"></jsp:setProperty>

<%
String patient_id = request.getParameter("patient_id");
Patient p = PatientDao.getPatientByPatientId(Integer.parseInt(patient_id));
Questionnaires question = QuestionnairesDao.getQuestionnairesByPatientId(Integer.parseInt(patient_id));
if(question.getChoice()==null)
{
	response.sendRedirect("addQuestionnairesform.jsp?patient_id=" + patient_id);
}
%>

<h1 align="center">Covid-19 Test Questionnaire</h1>
<table border="1" width="100%">
	<tr>
		<td>Patient Name:
		<td><%=p.getPatient_name() %></td>
	</tr>
	<tr>
		<td>Patient IC:
		<td><%=p.getIC() %></td>
	</tr>
	<tr>
		<td>1. Choice of your swab test:</td>
		<td><%=question.getChoice() %></td>
	</tr>
	<tr>	
		<td>2. Are you vaccinated?</td>
		<td><%=question.getVaccinated() %></td>
	</tr>
	<tr>
		<td>3. Are you exhibiting two or more symptoms:</td>
		<td><%=question.getSymptoms() %></td>
	</tr>
	<tr>
		<td>4. Have you attended any areas associated with known COVID-19 clusters:</td>
		<td><%=question.getClusters() %></td>
	</tr>
	<tr>
		<td>5. Do you have any close contact to confirmed or suspected case of COVID-19 case within 14 days?</td>
		<td><%=question.getClose_contact() %></td>
	</tr>
</table>
<div style="text-align:center; margin-top:10px">
	<a type="button" href="viewpatients.jsp"><input  type=button value="Back to View Patient "></a>
</div>
</body>
</html>