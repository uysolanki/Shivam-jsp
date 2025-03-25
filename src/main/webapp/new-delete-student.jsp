<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int a=Integer.parseInt(request.getParameter("eno"));
%>

<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/itpb2db"  
     user="root"  password="" />
     
<sql:update dataSource="${con}" var="rows">
delete from emp where eno=?
<sql:param value="<%= a %>"></sql:param>
</sql:update>

<c:if  test="${rows>0}">
	<c:redirect url="new-all-students.jsp" />
</c:if>

<c:if  test="${n<=0}">
    <c:out value="Unable to Delete Student"></c:out>
	<c:redirect url="new-all-students.jsp" />
</c:if>
</body>
</html>