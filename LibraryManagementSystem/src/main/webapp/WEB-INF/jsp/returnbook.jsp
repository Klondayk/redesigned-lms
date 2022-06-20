<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17.01.2021
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LMS</title>
</head>
<body>
<h3>RETURN BOOK</h3>

<form method = "post" >
    Book ID : <input type = "text" name="book_id"/>
    <br><br>
    <input type="submit" value ="Return"  onclick="return confirm('Book returned');"/>
</form>
</body>
</html>
