<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Example example file</title>
<script>
	
</script>
</head>
<body>
	<%
		String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));

	String res = "Hello, " + name + "! You are " + age + " years old.";

	out.print(res);
	%>

</body>
</html>