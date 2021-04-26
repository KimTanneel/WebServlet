<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/12/2021
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/service/create.css">
</head>

<body>
<nav class="navbar navbar-expand-sm bg-info navbar-dark justify-content-between ">
    <!-- Brand -->
    <div>
        <!-- Links -->
        <ul class="navbar-nav ml-5 ">
            <li class="nav-item">
                <a class="nav-link" href="../index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/employee">Employee</a>
            </li>
            <%--            href="/customer?action=view"--%>
            <li class="nav-item">
                <a class="nav-link btn " id="btn-customer" >Customer</a>
            </li>
            <li class="nav-item">
                <a class="nav-link btn" id="btn-service" href="/service">Service</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/contract ">Contract</a>
            </li>
            <!-- Dropdown -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    Dropdown link
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Link 1</a>
                    <a class="dropdown-item" href="#">Link 2</a>
                    <a class="dropdown-item" href="#">Link 3</a>
                </div>
            </li>
        </ul>
    </div>

    <form class="form-inline mr-5" action="/action_page.php">
        <input class="form-control mr-sm-2" type="text" placeholder="Search">
        <button class="btn btn-success" type="submit">Search</button>
    </form>
</nav>
<div class="row content">
    <div class="col-2 item-left">
        <ul>
            <li>ItemOne</li>
            <li>ItemOne</li>
            <li>ItemOne</li>
        </ul>
    </div>
    <div class="col-10" id="content">
        <div class="" id="body">
            <div class="container-fluid main">
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
<%--                            <td>--%>
<%--                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
<%--                                   Hello--%>
<%--                                </button>--%>
<%--                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--                                    <div class="modal-dialog" role="document">--%>
<%--                                        <div class="modal-content">--%>
<%--                                            <div class="modal-header">--%>
<%--                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>--%>
<%--                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                                                    <span aria-hidden="true">&times;</span>--%>
<%--                                                </button>--%>
<%--                                            </div>--%>
<%--                                            <div class="modal-body">--%>
<%--                                                ...--%>
<%--                                            </div>--%>
<%--                                            <div class="modal-footer">--%>
<%--                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
<%--                                                <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </td>--%>
                            <td><a class="btn btn-info " id="btn-detail${service.id}" name="detail" >Detail</a></td>
                            <td><a class="btn btn-primary" id="btn-edit${service.id}"name="edit" >Edit</a></td>
                            <td><a class="btn btn-danger" id="btn-delete${service.id}" name="delete">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="d-flex">
                    <div class="mr-5">
                        <a href="/service?action=create" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Create New service</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <!-- Button trigger modal -->
    <button type="button" id="ttt" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('#ttt').click(function(){
            alert("ssss")
        })
    </script>
</div>

<footer class="text-center text-white" style="background-color: #caced1;">
    <!-- Grid container -->
    <div class="container p-4">
        <!-- Section: Images -->
        <section class="">
            <div class="row">
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/113.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/111.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/112.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/114.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/115.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0">
                    <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                        <img src="https://mdbootstrap.com/img/new/fluid/city/116.jpg" class="w-100" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Images -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2020 Copyright:
        <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>
<script>
    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').trigger('focus')
    })
</script>
<%--<script  >--%>
<%--    $(document).ready(function () {--%>
<%--        $('#btn-customer').click(function () {--%>
<%--            $.ajax({--%>
<%--                type:'GET',--%>
<%--                url:'customer',--%>
<%--                success :function (result) {--%>
<%--                    $('#body').html(result);--%>
<%--                }--%>
<%--            })--%>
<%--        })--%>

<%--    })--%>
<%--</script>--%>
</body>
</html>

