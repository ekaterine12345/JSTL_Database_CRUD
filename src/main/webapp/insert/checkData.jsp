<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/25/2023
  Time: 09:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String firstName = request.getParameter("first_name");
  String lastName = request.getParameter("last_name");

%>
<ul>
  <li><%=firstName%></li>
  <li><%=lastName%></li>
</ul>
<a href="save.jsp?firstName=<%=firstName%>&lastName=<%=lastName%>">save</a>
</body>
</html>
