<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17.01.2021
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LMS</title>
</head>
<body>
<h3>Assign Book</h3>

<form method = "post" >
    User ID : <input type = "text" name="user_id" />
    <br><br>
    Book ID : <input type = "text" name="book_id" />
    <br><br>
    Username : <input type = "text" name="user_username" />
    <br><br>
    <input type="submit" value ="Assign Book" onclick="return confirm('Book Assigned')"/>
</form>
<br>
<a href="/managerlogin">Go back</a>
</body>
</html>
