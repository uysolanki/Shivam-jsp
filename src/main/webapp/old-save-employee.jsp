<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,db.MySQLConnectionITP" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int a=Integer.parseInt(request.getParameter("t1"));
String b=request.getParameter("t2");
double c= Double.parseDouble(request.getParameter("t3"));

Connection con=MySQLConnectionITP.getConnection();  //connection is open
String query="insert into emp values(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1,a);
ps.setString(2,b);
ps.setDouble(3,c);

int rows=ps.executeUpdate();
if(rows>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("all-students.jsp");
	rd.forward(request, response);	
}
else
{
	out.print("<font color='red'>Unable to Add Student</font>");
	RequestDispatcher rd=request.getRequestDispatcher("/add-student.jsp");
	rd.include(request, response);
}
%>
</body>
</html>