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
        <th scope="col">START DATE</th>
        <th scope="col">END DATE</th>
        <th scope="col">DEPOSIT</th>
        <th scope="col">CONTRACT TOTAL MONEY</th>
        <th scope="col">EMPLOYEE</th>
        <th scope="col">CUSTOMER</th>
        <th scope="col">SERVICE</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listContract}" var="contract" >
        <tr>
            <td>${contract.id}</td>
            <td>${contract.start_date}</td>
            <td>${contract.end_date}</td>
            <td>${contract.deposit}</td>
            <td>${contract.contract_total_money}</td>
            <td>${contract.employee_id}</td>
            <td>${contract.customer_id}</td>
            <td>${contract.service_id}</td>
            <td><a class="btn btn-info " id="btn-detail${contract.id} " name="detail" href="/contract?action=detail&id=${contract.id}" >Detail</a></td>
            <td><a class="btn btn-primary" id="btn-edit${contract.id} "name="edit" href="/contract?action=edit&id=${contract.id}" >Edit</a></td>
            <td><a class="btn btn-danger" id="btn-delete${contract.id}" name="delete" href="/contract?action=delete&id=${contract.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="d-flex">
    <div class="mr-5">
        <a href="/contract?action=create" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create New contract</a>
        <a href="/contract?action=search" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Search</a>
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
                    url:'contract',
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
    //                 url:'contract',
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
