<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Registration Form
</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
First Name: <form:input path="firstName"/>
<br><br>
Last Name: <form:input path="lastName"/>
<br><br>
Country: <form:select path="country">
<%-- <form:option value="India" label="India"/>
<form:option value="Germany" label="Germany"/>
<form:option value="Russia" label="Russia"/>
<form:option value="Australia" label="Australia"/> --%>

<form:options items="${student.countryOptions}"/>
</form:select>
<br><br>
Favourite Language:
Java <form:radiobutton path="favouriteLanguage" value="Java"/>
C# <form:radiobutton path="favouriteLanguage" value="C#"/>
PHP <form:radiobutton path="favouriteLanguage" value="PHP"/>
<br><br>

Operating System:
Windows: <form:checkbox path="operatingSystem" value="Windows"/>
Mac: <form:checkbox path="operatingSystem" value="Mac"/>
Linux: <form:checkbox path="operatingSystem" value="Linux"/>
<br><br>
<input type="submit" value="submit"/> 

</form:form>
</body>
</html>
