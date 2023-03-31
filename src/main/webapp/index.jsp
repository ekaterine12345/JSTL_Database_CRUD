<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<%--<c:forTokens items = "Zara,nuha,roshy" delims = "," var = "name">--%>
<%--<c:out value = "${name}"/><p>--%>
<%--    </c:forTokens>--%>

        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/testing2"
                           user="myuser"  password="mypassword1"/>

        <sql:query dataSource="${db}" var="rs">
        SELECT * from students_tb;
        </sql:query>
<table border="2px">
    <tr>
        <th>ID</th>
        <th>First name</th>
        <th>last name</th>
        <th>update</th>
        <th>delete</th>
    </tr>
    <c:forEach items ="${rs.rows}" var="student">
        <tr>
            <td>${student.ID}</td>
            <td>${student.First_Name}</td>
            <td>${student.Last_Name}</td>
            <td><a href="update/updateForm.jsp?id=${student.id}">Edit</a></td>
            <td><a href="./delete.jsp?id=${student.id}">Delete</a></td>
        </tr>
    </c:forEach>

</table>

<a href="insert/add.jsp">Add new Student</a>
</body>
</body>
</html>