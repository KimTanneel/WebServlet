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
    <h1>Create New Service</h1>
    <form action="/employee?action=create" method="post">
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
            <label class="col-sm-2 col-form-label">BIRTHDAY</label>
            <div class="col-sm-5">
                <input type="text" name="birthday" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">ID CARD</label>
            <div class="col-sm-5">
                <input type="text" name="birthday" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">SALARY</label>
            <div class="col-sm-5">
                <input type="text" name="salary" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">PHONE</label>
            <div class="col-sm-5">
                <input type="text" name="phone" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">EMAIL</label>
            <div class="col-sm-5">
                <input type="text" name="email" class="form-control" >
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">POSITION ID</label>
            <div class="col-sm-5">
                <select name="type_id" class="form-control" >
                    <option value="1">Lễ Tân</option>
                    <option value="2">Phục Vụ</option>
                    <option value="3">Chuyên Viên</option>
                    <option value="4">Giám Sát</option>
                    <option value="5">Giám Đốc</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">EDUCATION ID</label>
            <div class="col-sm-5">
                <select name="type_id" class="form-control" >
                    <option value="1">Trung Cấp</option>
                    <option value="2">Cao Đẳng</option>
                    <option value="3">Đại Học</option>
                    <option value="4">Sau Đại Học</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">DIVISION ID</label>
            <div class="col-sm-5">
                <select name="type_id" class="form-control" >
                    <option value="1">Sale-Marketing</option>
                    <option value="2">Hành Chính</option>
                    <option value="3">Phục Vụ</option>
                    <option value="4">Manager</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">USERNAME</label>
            <div class="col-sm-5">
                <input type="text" name="email" class="form-control" >
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
        <button type="reset" class = "btn btn-primary">Cancel</button>
    </form>
</div>
</body>
</html>
