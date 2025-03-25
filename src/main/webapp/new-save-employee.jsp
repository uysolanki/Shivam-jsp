<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="myerror-page.jsp" %>
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
%>

<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/itpb2db"  
     user="root"  password="" /> 


<sql:update dataSource="${con}" var="n">
insert into emp values(?,?,?)
<sql:param value="<%= a %>"></sql:param>
<sql:param value="<%= b %>"></sql:param>
<sql:param value="<%= c %>"></sql:param>
</sql:update>

<c:if  test="${n>0}">
	<c:redirect url="new-all-students.jsp" />
</c:if>

<c:if  test="${n<=0}">
    <c:out value="Unable to Add Student"></c:out>
	<c:redirect url="add-students.jsp" />
</c:if>
</body>
</html>