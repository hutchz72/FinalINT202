<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Office-Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .office-card {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            margin: 10px;
            padding: 10px;
        }

        .selected-office {
            background-color: #ffc107;
        }

        .employee-card {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            margin: 10px;
            padding: 10px;
        }

        .insert-form,
        .find-form,
        .update-form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row bg-primary text-white">
        <h2>Classic Model Offices</h2>
    </div>

    <!-- Office List -->
    <div class="row">
        <c:forEach items="${offices}" var="office">
            <div class="col-md-3 office-card ${office.officeCode == selectedOffice.officeCode ? 'selected-office' : ''}">
                <div>
                    <a href="office-list?officeCode=${office.officeCode}">${office.city}</a>, ${office.country}
                </div>
                <div>${office.phone}</div>
                <form action="delete072" method="post">
                    <input type="hidden" name="officeCode" value="${office.officeCode}">
                    <input type="submit" value="Delete" class="btn btn-danger mt-2">
                </form>
            </div>
        </c:forEach>
    </div>

    <!-- Employee List -->
    <div class="row bg-light">
        <h3>Employees</h3>
    </div>
    <div class="row">
        <c:forEach items="${selectedOffice.employeeList}" var="employee">
            <div class="col-md-3 employee-card">
                <div>${employee.firstName} ${employee.lastName} - ${employee.jobTitle}</div>
            </div>
        </c:forEach>
    </div>

    <!-- Insert Form -->
    <div class="insert-form">
        <h1>Insert Data</h1>
        <form action="insert072" method="post">
            <input type="submit" value="Insert" class="btn btn-success">
        </form>
    </div>

    <!-- Find Form -->
    <div class="find-form">
        <h2>Find Data</h2>
        <form action="findBy072" method="post">
            <input placeholder="Enter city or country to search" type="text" name="cityOrCountry" class="form-control">
            <input type="submit" value="Submit" class="btn btn-primary mt-2">
        </form>
    </div>

    <!-- Update Form -->
    <div class="update-form">
        <h1>Update Data</h1>
        <form action="Update072" method="post">
            <input placeholder="officdCode"type="text" name="officeCode"><br>
            <input placeholder="เปลี่ยนcountry" type="text" name="country"><br>
            <input placeholder="เปลี่ยนaddressLine1" type="text" name="addressLine1"><br>
            <input placeholder="เปลี่ยนcity" type="text" name="city"><br>
            <input placeholder="เปลี่ยนphone" type="text" name="phone"><br>
            <input placeholder="เปลี่ยนpostalCode" type="text" name="postalCode"><br>
            <input placeholder="เปลี่ยนTerritory" type="text" name="territory"><br>
            <input placeholder="เปลี่ยนstate" type="text" name="state"><br>
            <input placeholder="เปลี่ยนaddressLine2" type="text" name="addressLine2"><br>
            <input type="submit" value="Update" class="btn btn-warning">
        </form>
    </div>
</div>
</body>
</html>
