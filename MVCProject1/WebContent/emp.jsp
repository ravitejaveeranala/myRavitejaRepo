<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form</title>
</head>
<body>

<form action="EmployeeStoreServlet" method="post">
Eno:<input type="text" name="eno"/>
<br>
Name:<input type="text" name="name"/>
<br>
Salary:<input type="text" name="salary"/>
<br>
<input type="submit" value="STORE"/>
</form>



</body>
</html>