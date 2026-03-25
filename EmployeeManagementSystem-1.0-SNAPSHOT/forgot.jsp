<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password - Employee Management System</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
    </header>

    <div class="container">
        <div class="auth-container">
            <h2>Reset Password</h2>
            <form method="post" action="forgot" class="auth-form">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="friendName">Friend Name (Security Answer):</label>
                    <input type="text" id="friendName" name="friendName" required>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" required>
                </div>
                <input type="submit" value="Reset Password" class="btn btn-primary">
            </form>
            <div class="auth-links">
                <a href="login.jsp">Back to Login</a>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 Employee Management System. All rights reserved.</p>
    </footer>
</body>
</html>