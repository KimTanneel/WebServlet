<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/1/2021
  Time: 8:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">NAME</th>
        <th scope="col">TYPE</th>
        <th scope="col">GENDER</th>
        <th scope="col">BIRTHDAY</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listCustomer}" var="customer" >
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>
                <c:choose>
                    <c:when test = "${customer.type_id == 1}">
                        MemBer
                    </c:when>
                    <c:when test = "${customer.type_id ==2}">
                        Silver
                    </c:when>
                    <c:when test = "${customer.type_id ==3}">
                        Gold
                    </c:when>
                    <c:when test = "${customer.type_id ==4}">
                        Platinum
                    </c:when>
                    <c:when test = "${customer.type_id ==5}">
                        Dinamond
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>

            </td>
            <td>
                <c:choose>
                    <c:when test = "${customer.gender == 0}">
                        MALE
                    </c:when>
                    <c:when test = "${customer.gender ==1}">
                        FEMALE
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${customer.birthday }</td>
            <td><a class="btn btn-info" href="/customer?action=detail?id=${customer.id}">Detail</a></td>
            <td><a class="btn btn-primary" href="/customer?action=edit&id=${customer.id}">Edit</a></td>
            <td><a class="btn btn-danger" href="/customer?action=delete&id=${customer.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="d-flex">
    <div class="mr-5">
        <a href="/customer?action=create" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create New customer</a>
        <a href="/customer?action=search" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Search</a>
    </div>
    <div class="float-right ml-5">
        <form action="sort" method="get">
            <div class="form-group">
                <label for="sel1"> <strong>Select Type Sort</strong></label>
                <select class="form-control" name="option" id="sel1">
                    <option value="1">Name</option>
                    <option value="2">Price</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Sort</button>
        </form>

    </div>

</div>


</body>
</html>
