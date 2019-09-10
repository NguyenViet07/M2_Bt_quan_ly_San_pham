<%--
  Created by IntelliJ IDEA.
  User: javier
  Date: 09/09/2019
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post" enctype="multipart/form-data">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>photo:</td>
                <td><img src="${pageContext.request.contextPath}/img/${requestScope["product"].getPhoto()}" height="40px" width="40px">
                    <input type="file" name="photo" id="photo"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input id="producer" type="text" name="producer"value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Update customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
