<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	//add a new text-field when add is clicked
	<%! 
		int count = (Integer)request.attribute("count");
	%>
	<p>Enter the name tags of the cows with mastitis</p>
	<!-- mastitisReport is a servlet that stores the cows with mastitis record-->
	<form action="/mastitisRepost.do">
	<%
		for(int i = 0; i < count; i++){
			out.println("<input type='text' name='mastitis"+i+"'/>")
		}
	%>
	<input type="submit" value="Submit" />
	</form>
</body>
</html>