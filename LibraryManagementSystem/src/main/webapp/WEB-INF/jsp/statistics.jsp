<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17.01.2021
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LMS</title>
    <style>
        table, th, td {
            border: 2px solid black;
        }
    </style>
</head>
<body>
<h3>Book Statistics</h3>
<table>
    <tr>
        <th>Most borrowed genre</th>
    </tr>

    <%
        String[][] Data = (String[][]) session.getAttribute("statistics");
        if (Data != null)
        {
            for (String[] info : Data)
            {
    %>
    <tr> <td><%= info[0] %></td></tr>
    <%
            }
        }
    %>
</table>
<br>
<a href="/managerlogin">Go back</a>
</body>
</html>