<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,db.MySQLConnectionITP" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int a=Integer.parseInt(request.getParameter("rno"));


Connection con=MySQLConnectionITP.getConnection();  //connection is open
String query="delete from emp where eno=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1,a);

int rows=ps.executeUpdate();
if(rows>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("all-students.jsp");
	rd.forward(request, response);	
}
else
{
	out.print("<font color='red'>Unable to Delete Student</font>");
	RequestDispatcher rd=request.getRequestDispatcher("all-students.jsp");
	rd.forward(request, response);	
}
%>
</body>
</html>