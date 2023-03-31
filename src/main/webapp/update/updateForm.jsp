<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/31/2023
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Form</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/testing2"
                   user="myuser"  password="mypassword1"/>

<sql:query dataSource="${db}" var="dbResult">
  SELECT * from students_tb where id=?;
  <sql:param value="${param.id}" />
</sql:query>


<form action="update.jsp" method="post">
  <h1>Update Address</h1>
 <c:out value="${param.id}"/>
  <c:forEach var="row" items="${dbResult.rows}">
    <input type="hidden" value="${row.id}" name="id"/>

    <label>First Name</label>
    <input type="text" value="${row.first_name}" name="first_name"/>

    <label>Last Name </label>
    <input type="text" value="${row.last_name}" name="last_name"/>


    <input type="submit" value="Update"/>
  </c:forEach>
</form>

</body>
</html>
