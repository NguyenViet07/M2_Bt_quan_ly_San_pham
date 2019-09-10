<%--
  Created by IntelliJ IDEA.
  User: javier
  Date: 09/09/2019
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .message{
            color: blue;
        }
    </style>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <samp class="message">${requestScope["message"]}</samp>
    </c:if>
</p>
<p>
    <a href="/products">Back to customer list</a>
</p>
<form method="post" enctype="multipart/form-data">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Photo:</td>
                <td><input type="file" name="updateFile"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer"></td>

            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Create product" value="Create product"></td>
            </tr>

        </table>
    </fieldset>
</form>
</body>
</html>
