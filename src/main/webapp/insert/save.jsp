<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/2023
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String firstName = request.getParameter("firstName");
  String lastName = request.getParameter("lastName");
%>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/testing2"
                   user="myuser"
                   password="mypassword1"/>
<c:set var="firstName" value="<%=firstName%>"/>
<c:set var="lastName" value="<%=lastName%>"/>
<sql:update var="result" dataSource="${db}">
  Insert  Into students_tb (First_Name, Last_Name, BIRTH_YEAR) values (?,?, ?);
    <sql:param value="${firstName}"/>
    <sql:param value="${lastName}"/>
  <sql:param value="${20}"/>
</sql:update>

<a href="../index.jsp">Return to Main Page</a>
</body>
</html>
