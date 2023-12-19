<%--
  Created by IntelliJ IDEA.
  User: Hutchy
  Date: 19/11/2566
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Office</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="insert072" method="post">
    <label for="officeCode">Office Code:</label><br>
    <input type="text" name="officeCode" id="officeCode" required><br>

    <label for="addressLine1">Address Line 1:</label><br>
    <input type="text" name="addressLine1" id="addressLine1" required><br>

    <label for="addressLine2">Address Line 2:</label><br>
    <input type="text" name="addressLine2" id="addressLine2"><br>

    <label for="city">City:</label><br>
    <input type="text" name="city" id="city" required><br>

    <label for="state">State:</label><br>
    <input type="text" name="state" id="state"><br>

    <label for="country">Country:</label><br>
    <input type="text" name="country" id="country" required><br>

    <label for="postalCode">Postal Code:</label><br>
    <input type="text" name="postalCode" id="postalCode"><br>

    <label for="phone">Phone:</label><br>
    <input type="text" name="phone" id="phone"><br>

    <label for="territory">Territory:</label><br>
    <input type="text" name="territory" id="territory"><br>

    <input type="submit" value="Insert" >
</form>
<form action="office-list" method="get">
    <input type="submit" value="back to office-list">
</form>
</body>
</html>