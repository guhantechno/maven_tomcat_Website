<%@ page language="java" import="com.loginDB.login" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body class="login">
    <div class="signin-container">
        <h2>Login</h2>
        <form method="POST">
            <div class="form-group">
                <input type="text" id="username" name="username" required>
                <label for="username">Username</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" required>
                <label for="password">Password</label>
            </div>

            <% 
                if ("POST".equalsIgnoreCase(request.getMethod())) { 
                    String username = request.getParameter("username"); 
                    String password = request.getParameter("password");

                    login auth = new login();
                    try {
                        boolean success = auth.loginUser(username, password);
                        if (success) {
                            response.sendRedirect("./Home.jsp");
                        } else {
                            out.println("<p>Invalid username or password</p>");
                        }
                    } catch (Exception e) {
                        out.println("<p>Error: " + e.getMessage() + "</p>");
                    }
                }
            %>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
