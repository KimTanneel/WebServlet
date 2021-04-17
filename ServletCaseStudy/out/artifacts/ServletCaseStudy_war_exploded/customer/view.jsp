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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
            <td><a class="btn btn-info " id="btn-detail${customer.id}" name="detail" >Detail</a></td>
            <td><a class="btn btn-primary" id="btn-edit${customer.id}"name="edit" >Edit</a></td>
            <td><a class="btn btn-danger" id="btn-delete${customer.id}" name="delete">Delete</a></td>
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
<script>
    $(document).ready(function () {
        let xlen =document.getElementsByName('edit').length;
        console.log(xlen);
        let btn_id ='';
        for(let i =1;i<=xlen;i++){
            console.log(btn_id);
            btn_id ='#btn-edit'+i;
            $(btn_id).click(function () {
                $.ajax({
                    type:'GET',
                    data:{action:'edit',id:i},
                    url:'customer',
                    success :function (result) {
                        $('#body').html(result);
                    }
                })
            })
        }

    })
    // $(document).ready(function () {
    //     let xlen =document.getElementsByName('delete').length;
    //     let btn_id ='';
    //     for(let i =1;i<=xlen;i++){
    //         btn_id ='#btn-delete'+i;
    //         console.log(btn_id);
    //         $(btn_id).click(function () {
    //             $.ajax({
    //                 type:'GET',
    //                 data:{action:'delete',id:i},
    //                 url:'customer',
    //                 success :function (result) {
    //                     $('#body').html(result);
    //                 }
    //             })
    //         })
    //     }
    //
    // })
</script>

</body>
</html>
