<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addselfproc.jsp" method="get">
	Enter Number 1 <input type="text" name="t1"><br>
	Enter Number 2 <input type="text" name="t2"><br>
	<input type="submit" name="s1" value="ADD">
</form>
        
        
		
        <%! int n1,n2,n3; %>
		 <h1>Welcome to My First Self Processing JSP Application</h1>   
		
		<%
			if(request.getParameter("s1")!=null)
        	{
			n1=Integer.parseInt(request.getParameter("t1"));
		    n2=Integer.parseInt(request.getParameter("t2"));
		    n3=n1+n2; 
		    out.print("Addition " +n3);
        	}
		%>
		<p>
		While in Incognito, sites can't use your cookies to see your browsing activity across sites, even related sites. Your browsing activity isn't used for things like personalizing ads. Features on some sites may not work.
		</p>
		<%
		if(request.getParameter("s1")!=null)
    	{
		n3=n1-n2;
		out.print("Substraction " +n3);
    	}
		%>
		
		<p>
		While in Incognito, sites can't use your cookies to see your browsing activity across sites, even related sites. Your browsing activity isn't used for things like personalizing ads. Features on some sites may not work.
		</p>
		<%
		if(request.getParameter("s1")!=null)
    	{
		n3=n1*n2;
		out.print("Multiplication " +n3);
    	}
		%>
		

</body>
</html>