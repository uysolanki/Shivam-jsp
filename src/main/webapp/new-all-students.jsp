<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ page import="db.MySQLConnectionITP" %> --%>
<%@ include file="header.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
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


<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/itpb2db"  
     user="root"  password="" />  
     
<sql:query dataSource="${con}" var="rs">  
select * from emp;  
</sql:query>  

<a href='add-student.jsp' class='btn btn-primary mb-3 ml-3'>Add Student</a>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ENO</th>
      <th scope="col">ENAME</th>
      <th scope="col">SALARY</th>
       <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
 
  <c:forEach var="row" items="${rs.rows}">  
<tr>  
<td><c:out value="${row.eno}"/></td>  
<td><c:out value="${row.ename}"/></td>  
<td><c:out value="${row.sal}"/></td>  
<td> <a href='new-delete-student.jsp?eno=${row.eno}' class='btn btn-danger mb-3 ml-3' onClick='return verifyDelete()'>Delete</a> </td>  
</tr>  
</c:forEach>
  
  </tbody>
</table>
<%@ include file="header.jsp" %>
<% out.println("Welcome"); %>
<c:out value="Welcome to FSD"></c:out>
</body>
</html>