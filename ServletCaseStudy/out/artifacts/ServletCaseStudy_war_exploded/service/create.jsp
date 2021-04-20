<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
 Created by IntelliJ IDEA.
 User: ADMIN
 Date: 4/1/2021
 Time: 9:14 PM
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="create.css">
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid main">
    <h1>Create New Product</h1>
    <form action="/service?action=create" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">ID</label>
            <div class="col-sm-5">
                <input type="text" name="id" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">NAME</label>
            <div class="col-sm-5">
                <input type="text" name="name" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">AREA</label>
            <div class="col-sm-5">
                <input type="text" name="area" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">SERVICE COST</label>
            <div class="col-sm-5">
                <input type="text" name="service_cost" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">MAX PEOPLE</label>
            <div class="col-sm-5">
                <input type="text" name="service_max_people" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">RENT TYPE ID</label>
            <div class="col-sm-5">
                <select name="type_id" class="form-control">
                    <c:forEach items="${typeRentList}" var="typeRent" >
                        <option value="${typeRent.id}">${typeRent.name}</option>
                    </c:forEach>
                </select>
            </div>

        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">SERVICE TYPE ID</label>
            <div class="col-sm-5">
                <select name="type_id" class="form-control">
                    <c:forEach items="${typeServiceList}" var="typeService" >
                        <option value="${typeService.id}">${typeService.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">STANDARD ROOM</label>
            <div class="col-sm-5">
                <input type="text" name="standard_room" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">DESCRIPTION</label>
            <div class="col-sm-5">
                <input type="text" name="description_other_convenience" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">POOL AREA</label>
            <div class="col-sm-5">
                <input type="text" name="pool_area" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">NUMBER OF FLOOR</label>
            <div class="col-sm-5">
                <input type="text" name="number_of_floors" class="form-control" >
            </div>
        </div>
            <button type="submit" class="btn btn-primary">Create</button>
            <button type="reset" class = "btn btn-primary">Cancel</button>

    </form>

</div>
</body>
</html>
