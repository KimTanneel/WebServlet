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
        <th scope="col">BIRTHDAY</th>
        <th scope="col">ID_CARD</th>
        <th scope="col">SALARY</th>
        <th scope="col">PHONE</th>
        <th scope="col">EMAIL</th>
        <th scope="col">POSITION</th>
        <th scope="col">EDUCATION</th>
        <th scope="col">DIVISION</th>
        <th scope="col">USERNAME</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listEmployee}" var="employee" >
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.birthday}</td>
            <td>${employee.id_card}</td>
            <td>${employee.salary}</td>
            <td>${employee.phone}</td>
            <td>${employee.email}</td>
            <td>
                <c:choose>
                    <c:when test = "${employee.position_id == 1}">
                       Lễ Tân
                    </c:when>
                    <c:when test = "${employee.position_id ==2}">
                        Phục Vụ
                    </c:when>
                    <c:when test = "${employee.position_id ==3}">
                        Chuyên Viên
                    </c:when>
                    <c:when test = "${employee.position_id ==4}">
                        Giám sát
                    </c:when>
                    <c:when test = "${employee.position_id ==5}">
                        Quản lí
                    </c:when>
                    <c:when test = "${employee.position_id ==6}">
                        Giám Đốc
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>

            </td>
            <td>
                <c:choose>
                    <c:when test = "${employee.education_id == 1}">
                        Trung Cấp
                    </c:when>
                    <c:when test = "${employee.education_id ==2}">
                        Cao Đẳng
                    </c:when>
                    <c:when test = "${employee.education_id ==3}">
                        Đại Học
                    </c:when>
                    <c:when test = "${employee.education_id ==4}">
                        Sau Đại Học
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test = "${employee.division_id == 1}">
                        Sale Marketing
                    </c:when>
                    <c:when test = "${employee.division_id ==2}">
                        Hành Chính
                    </c:when>
                    <c:when test = "${employee.division_id ==3}">
                        Phục Vụ
                    </c:when>
                    <c:when test = "${employee.division_id ==4}">
                        Quản lí
                    </c:when>
                    <c:otherwise>
                        UNDEFINE
                    </c:otherwise>
                </c:choose>
            </td>

            <td>${employee.username }</td>
            <td><a class="btn btn-info " id="btn-detail${employee.id} " name="detail" href="/employee?action=detail&id=${employee.id}" >Detail</a></td>
            <td><a class="btn btn-primary" id="btn-edit${employee.id} "name="edit" href="/employee?action=edit&id=${employee.id}" >Edit</a></td>
            <td><a class="btn btn-danger" id="btn-delete${employee.id}" name="delete" href="/employee?action=delete&id=${employee.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="d-flex">
    <div class="mr-5">
        <a href="/employee?action=create" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create New employee</a>
        <a href="/employee?action=search" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Search</a>
    </div>
<%--    <div class="float-right ml-5">--%>
<%--        <form action="sort" method="get">--%>
<%--            <div class="form-group">--%>
<%--                <label for="sel1"> <strong>Select Type Sort</strong></label>--%>
<%--                <select class="form-control" name="option" id="sel1">--%>
<%--                    <option value="1">Name</option>--%>
<%--                    <option value="2">Price</option>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-primary">Sort</button>--%>
<%--        </form>--%>

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
                    url:'employee',
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
    //                 url:'employee',
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
