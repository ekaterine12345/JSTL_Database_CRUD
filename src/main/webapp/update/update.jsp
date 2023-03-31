<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/2023
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%String id = request.getParameter("id");%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/testing2"
                   user="myuser"  password="mypassword1"/>


<sql:update dataSource="${db}" var="dbResult">
UPDATE students_tb SET First_name=?, Last_name=? WHERE id=?;
    <sql:param value="${param.first_name}"/>
    <sql:param value="${param.last_name}"/>
    <sql:param value="${param.id}" />
</sql:update>

<c:if test="${dbResult>=1}">
    <c:redirect url="../index.jsp">
        <c:param name="msg" value="1 record updated"/>
    </c:redirect>
</c:if>


</body>
</html>
