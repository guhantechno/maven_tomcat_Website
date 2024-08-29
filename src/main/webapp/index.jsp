<%@ page language="java" import="com.login.UserAuthentication" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In Page</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body class="login">
    <div class="signin-container">
        <h2>Sign Up</h2>
        <form method="POST">
            <div class="form-group">
                <input type="text" id="fullname" name="fullname" required>
                <label for="fullname">Full Name</label>
            </div>

            <div class="form-group">
                <input type="email" id="email" name="email" required>
                <label for="email">Email</label>
            </div>

            <div class="form-group">
                <input type="text" id="username" name="username" required>
                <label for="username">Username</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" required>
                <label for="password">Password</label>
            </div>

            <div class="form-group">
                <input type="password" id="confirm-password" name="confirm-password" required>
                <label for="confirm-password">Confirm Password</label>
            </div>

            <%
                if ("POST".equalsIgnoreCase(request.getMethod())) { 
                    String fullname = request.getParameter("fullname"); 
                    String email = request.getParameter("email"); 
                    String username = request.getParameter("username"); 
                    String password = request.getParameter("password");
                    String confirmPassword = request.getParameter("confirm-password");
                    if (password.equals(confirmPassword)) {
                        UserAuthentication auth = new UserAuthentication();
                        try {
                            boolean success = auth.registerUser(fullname, email, username, password);
                            if (success) response.sendRedirect("./login.jsp");
                        } catch (Exception e) {
                            out.println("<p>Error: " + e.getMessage() + "</p>");
                        }
                    } else {
                        out.println("<p>Passwords do not match.</p>");
                    }
                }
            %>
            <center>
            <a href="./login.jsp" style="color: aqua;">Already have account Click Here</a></center><br>
            <input type="submit" value="Sign In">
        </form>
    </div>
</body>

</html>
