<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>List</title>
</head>
<body>
<h1>Products</h1>

<form method="post" action="/products?action=search">
    <input type="text" name="name" id="name">
    <button type="submit">Search</button>
</form>

<p>
    <a href="/products?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Photo</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td><img src="${pageContext.request.contextPath}/img/${product.getPhoto()}" height="40px" width="40px"></td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a> </td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

