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
        <th scope="col">AREA</th>
        <th scope="col">SERVICE_COST</th>
        <th scope="col">MAX PEOPLE</th>
        <th scope="col">RENT TYPE</th>
        <th scope="col">SERVICE TYPE</th>
        <th scope="col">STANDARD ROOM</th>
        <th scope="col">DESCRIPTION</th>
        <th scope="col">POOL AREA</th>
        <th scope="col">FLOOR NUMBER</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listService}" var="service" >
        <tr>
            <td>${service.id}</td>
            <td>${service.name}</td>
            <td>${service.area}</td>
            <td>${service.service_cost}</td>
            <td>${service.service_max_people}</td>


            <td>
                <c:choose>
                    <c:when test = "${service.rent_type_id == 1}">
                        HOME
                    </c:when>
                    <c:when test = "${service.rent_type_id ==2}">
                        HOUSE
                    </c:when>
                    <c:when test = "${service.rent_type_id ==3}">
                        VILLA
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${service.service_type_id}</td>
            <td>${service.standard_room}</td>
            <td>${service.description_other_convenience}</td>
            <td>${service.pool_area}</td>
            <td>${service.number_of_floors}</td>



<%--            <td><a class="btn btn-info " id="btn-detail${service.id}" name="detail" >Detail</a></td>--%>
<%--            <td><a class="btn btn-primary" id="btn-edit${service.id}"name="edit" >Edit</a></td>--%>
<%--            <td><a class="btn btn-danger" id="btn-delete${service.id}" name="delete">Delete</a></td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="d-flex">
    <div class="mr-5">
        <a href="/service?action=create" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create New service</a>
    </div>
</div>
<script>
    // $(document).ready(function () {
    //     let xlen =document.getElementsByName('edit').length;
    //     console.log(xlen);
    //     let btn_id ='';
    //     for(let i =1;i<=xlen;i++){
    //         console.log(btn_id);
    //         btn_id ='#btn-edit'+i;
    //         $(btn_id).click(function () {
    //             $.ajax({
    //                 type:'GET',
    //                 data:{action:'edit',id:i},
    //                 url:'service',
    //                 success :function (result) {
    //                     $('#body').html(result);
    //                 }
    //             })
    //         })
    //     }
    //
    // })
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
    //                 url:'service',
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
