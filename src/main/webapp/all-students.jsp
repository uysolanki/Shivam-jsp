<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,db.MySQLConnectionITP" %>
<%-- <%@ page import="db.MySQLConnectionITP" %> --%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script>
	function verifyDelete()
	{
		return confirm("Do you want to delete the record");
	}
</script>
</head>
<body>
<%! ResultSet rs; %>
<%
try
{
Connection con=MySQLConnectionITP.getConnection();  //connection is open
String query="select * from emp";
Statement st=con.createStatement();
rs=st.executeQuery(query);
}
catch(SQLException e1){}
%>
<a href='add-student.jsp' class='btn btn-primary mb-3 ml-3'>Add Student</a>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ENO</th>
      <th scope="col">ENAME</th>
      <th scope="col">SALARY</th>
      <th scope="col">DELETE</th>
      <th scope="col">UPDATE</th>
    </tr>
  </thead>
  <tbody>
  <% while(rs.next())
  { %>
	  <tr>
	  <td> <%= rs.getInt(1) %> </td>
	  <td> <%= rs.getString(2) %> </td>
	  <td> <%= rs.getDouble(3) %> </td>
	  <td> <a href='delete-student.jsp?rno=<%= rs.getInt(1) %>' class='btn btn-danger mb-3 ml-3' onClick='return verifyDelete()'>Delete</a> </td>
	  <td> <a href='update-student.jsp?rno=<%= rs.getInt(1) %>' class='btn btn-secondary mb-3 ml-3' onClick='return verifyDelete()'>Update</a> </td>
	  </tr>
 <% 
  }
  %>
  </tbody>
</table>
<%@ include file="header.jsp" %>
</body>
</html>

<%-- 
  <% while(rs.next())
  {
	  out.print("<tr>");
	  out.print("<td>" + rs.getInt(1) +"</td>");
	  out.print("<td>" + rs.getString(2) +"</td>");
	  out.print("<td>" + rs.getDouble(3) +"</td>");
	  out.print("</tr>");
  }
  %> --%>