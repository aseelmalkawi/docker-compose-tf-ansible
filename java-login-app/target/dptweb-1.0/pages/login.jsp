<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #3498db, #2980b9);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            max-width: 400px;
        }

        .login-header {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        .form-table {
            width: 100%;
            margin: 0 auto;
        }

        .form-table th {
            font-size: 18px;
            padding: 10px;
            color: #555;
        }

        .form-table input[type="text"],
        .form-table input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-table input[type="submit"],
        .form-table input[type="reset"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-table input[type="submit"]:hover,
        .form-table input[type="reset"]:hover {
            background-color: #0056b3;
        }

        .register-link {
            font-size: 16px;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="login-header">Login Page</h1>
        <form method="post" action="login">
            <table class="form-table">
                <thead>
                    <tr>
                        <th colspan="2">Login Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Username</th>
                        <td><input type="text" name="userName" value="" /></td>
                    </tr>
                    <tr>
                        <th>Password</th>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Login" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="reset" value="Reset" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            New User? <a class="register-link" href="register">Register Here</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
