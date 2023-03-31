<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ekaterine
  Date: 3/31/2023
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/testing2"
                   user="myuser"  password="mypassword1"/>
<sql:update dataSource="${db}" var="dbResult">
    DELETE FROM students_tb WHERE id=${param.id};
</sql:update>
<c:if test="${dbResult>=1}">
    <c:redirect url="index.jsp" >
        <c:param name="msg" value="1 record deleted." />
    </c:redirect>
</c:if>




</body>
</html>
