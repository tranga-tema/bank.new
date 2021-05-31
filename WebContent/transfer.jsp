<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="search.do" method="post">
		Receiver ID:<input type = "text" name="id" /><br>
		<input type ="submit" value="SEARCH"/>
	</form>
	
	<%
	String result = (String)request.getAttribute("msg");
	if(result != null && result.equals("true"))
	{
	%>
	
	
	<form action="search.do" method="post">
	Receiver ID:<input type = "text" name="id" /><br>
	<input type ="submit" value="SEARCH"/>
</form>
	<%} else if(result != null && result.equals("false")){
		out.print("No receiver ID");
	}
	%>
</body>
</html>