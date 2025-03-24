<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%! String username,password,appDate; %>
		
		<% 
		username = request.getParameter("t1");
		password = request.getParameter("t2");
		

		appDate=(String)application.getInitParameter("appdate");
		System.out.println(appDate);
		
		if(username.equals(password))
		{
			out.print("Login Successful");
			RequestDispatcher rd=request.getRequestDispatcher("shivam");
			rd.forward(request, response);
		}
		else
		{
			out.print("<font color='red'>Username password do not match from our database</font>");
			RequestDispatcher rd=request.getRequestDispatcher("/login.html");
			rd.include(request, response);
		}
		%>
</body>
</html>