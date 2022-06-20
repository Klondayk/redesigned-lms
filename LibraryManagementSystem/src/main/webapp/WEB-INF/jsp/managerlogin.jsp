<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 10.01.2021
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LMS Manager Account</title>
</head>
<body>
<h3><u>Manager Account</u></h3>
<%
    String manager_username = (String) session.getAttribute("manager_username");

    if (manager_username == null)
    {
%>
<p style="color: red">${errorMessage}</p>
<form method = "post" >
    Username : <input type = "text" name="manager_username" />
    <br>
    <br>
    Password : <input type = "password" name="manager_pass"/>
    <br>
    <br>
    <input type="submit" value ="Login"/>
    <br>
    <br>
    <a href="/login">Go back</a>
</form>
<%
}else{
%>
<p>You are logged in as: <%= manager_username %></p>
<a href="/newpublisher">Create a new Publisher Account</a>
<br>
<br>
<a href="/newbook">Add a new Book</a>
<br>
<a href="/removebook">removeBook</a>
<br>
<a href="/searchbook">Search Books</a>
<br>
<br>
<a href="/borrowinfo">Borrowed Book Details</a>
<br>

<a href="/assignbook">Assign a Book</a>
<br>
<a href="/unassignbook">Un-Assign a Book</a>
<br>
<a href="/statistics">Statistics</a>
<br>
<a href="/logout">Logout</a>
<%
    }
%>
</body>
</html>
