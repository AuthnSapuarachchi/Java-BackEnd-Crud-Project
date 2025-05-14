<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        background: #f0f2f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .login-container {
        background: #fff;
        padding: 2rem 2.5rem;
        border-radius: 10px;
        box-shadow: 0 8px 24px rgba(0,0,0,0.1);
        width: 350px;
        text-align: center;
    }
    .login-container h2 {
        margin-bottom: 1.5rem;
        color: #333;
    }
    .login-container input[type="text"],
    .login-container input[type="password"] {
        width: 100%;
        padding: 0.75rem;
        margin: 0.5rem 0 1rem 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1rem;
    }
    .login-container button {
        width: 100%;
        padding: 0.75rem;
        background: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 1rem;
        cursor: pointer;
        transition: background 0.2s;
    }
    .login-container button:hover {
        background: #0056b3;
    }
    .login-container .footer {
        margin-top: 1.5rem;
        font-size: 0.95rem;
        color: #777;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="loginform" method="post">
            <input type="hidden" name="action" value="login"> 
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <div class="footer">
            Don't have an account? <a href="register.jsp">Register</a>
        </div>
    </div>
</body>
</html>
