<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%! int n1,n2,n3;
		public double area()
		{
			return 3.14*5*5;
		}
		
		%>
		<!-- <h1>Welcome to My First JSP Application</h1> -->    
		
		<%
			n1=Integer.parseInt(request.getParameter("t1"));
		    n2=Integer.parseInt(request.getParameter("t2"));
		    n3=n1+n2;
		%>
		
		<font color='red'><b><u> <%= area() %></u></b></font>
		
		<p>
		While in Incognito, sites can't use your cookies to see your browsing activity across sites, even related sites. Your browsing activity isn't used for things like personalizing ads. Features on some sites may not work.
		</p>
		<%
		n3=n1-n2;
		out.print("Substraction " +n3);
		%>
		
		<p>
		While in Incognito, sites can't use your cookies to see your browsing activity across sites, even related sites. Your browsing activity isn't used for things like personalizing ads. Features on some sites may not work.
		</p>
		<%
		n3=n1*n2;
				n3=n1*n2 +10;
		out.print("Multiplication " +n3);
		%>
		
</body>
</html>