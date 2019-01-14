<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%! 
		int count = Int.parseInt(request.getParameter("count"));
	%>
	<p>Enter the name tags of the cows with mastitis</p>
	<!-- mastitisReport is a servlet that stores the cows with mastitis record-->
	<form action="/onheatReport.do">
	<%
		for(int i = 0; i < count; i++){
			out.println("<input type='text' name='onheat"+i+"'/>")
		}
	%>
	<input type="submit" value="Submit" />
	</form>
</body>
</html>