<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello contacts page !  
</h1>
<form:form method="post" action="./addContact" modelAttribute="Contact">
	<table>
		<tr>
			<td> <form:label path="firstName">First Name</form:label> </td>
			<td> <form:input path="firstName"/></td>
		</tr>
		<tr>
			<td> <form:label path="lastName">Last Name</form:label> </td>
			<td> <form:input path="lastName"/></td>
		</tr>
		<tr>
			<td> <form:label path="email">Email</form:label> </td>
			<td> <form:input path="email"/></td>
		</tr>
		<tr>
			<td> <form:label path="telephone">TelePhone</form:label> </td>
			<td> <form:input path="telephone"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Add Contact">
			</td>
		</tr>
	</table>
</form:form>

</body>
</html>
