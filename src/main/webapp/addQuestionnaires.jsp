<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.dao.QuestionnairesDao" %>

<jsp:useBean id="q" class="com.dao.bean.Questionnaires"></jsp:useBean>
<jsp:setProperty property="*" name="q"/>

<%
String symptoms="";
String[] Tempsymptoms = request.getParameterValues("symptoms");
if(Tempsymptoms.length > 0)
{
	for(int i=0;i<Tempsymptoms.length;i++){
		if(i!=0)
		{
			symptoms = symptoms + ", " + Tempsymptoms[i];
		}else{
			symptoms = Tempsymptoms[0];
		}
	}
}
q.setSymptoms(symptoms);
int i=QuestionnairesDao.save(q);
response.sendRedirect("viewpatients.jsp");
%>
</body>
</html>