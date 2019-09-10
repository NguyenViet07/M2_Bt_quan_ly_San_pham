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
    <title>View</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Photo: </td>
        <td><img src="${pageContext.request.contextPath}/img/${requestScope["product"].getPhoto()}" height="40px" width="40px"></td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${requestScope["product"].getProducer()}</td>
    </tr>

</table>
</body>
</html>
