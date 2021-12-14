<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Patient</h1>

<form action="addPatient.jsp" method="post">
	<table>
		<tr>
			<td>IC No.:</td>
			<td><input type="text" name="IC"></td>
		</tr>
		<tr>
			<td>Patient Name:</td>
			<td><input type="text" name="patient_name"></td>
		</tr>
		<tr>
			<td>Patient Gender:</td>
			<td><input type="radio" name="gender" value="Male">Male</td>
			<td><input type="radio" name="gender" value="Female">Female</td>
		</tr>
		<tr>
			<td>Patient Birthday:</td>
			<td><input type="date" name="birthday"></td>
			<td>Format:1970-12-31 OR 19701231</td>
		</tr>
		<tr>
			<td>Patient Phone Number:</td>
			<td><input type="tel" name="phone_number"></td>
		</tr>
		<tr>
			<td>Patient Visit Date:</td>
			<td><input type="date" name="date"></td>
			<td>Format:1970-12-31 OR 19701231</td>
		</tr>
				
		<tr>
			<td><input type="submit" value="Add Patient"/></td>
		</tr>	
		
	</table>
</form>
<a href="viewpatients.jsp">Back to view patients page</a>
</body>
</html>