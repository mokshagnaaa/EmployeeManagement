<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Employee Management System</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
        <nav>
            <a href="dashboard.jsp">Dashboard</a>
            <a href="employee">Manage Employees</a>
            <a href="login.jsp">Logout</a>
        </nav>
    </header>

    <div class="container">
        <div class="content-wrapper">
            <h2 class="page-title">Dashboard</h2>
            <p>Welcome to your Employee Management Dashboard. Use the menu to navigate through the system.</p>
            
            <div class="dashboard-menu">
                <div class="menu-card">
                    <a href="employee">👥 Manage Employees</a>
                </div>
                <div class="menu-card">
                    <a href="login.jsp">🚪 Logout</a>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 Employee Management System. All rights reserved.</p>
    </footer>
</body>
</html>