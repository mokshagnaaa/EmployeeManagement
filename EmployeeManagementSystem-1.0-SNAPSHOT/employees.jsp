<%@ page import="com.ems.model.Employee, java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Employees - Employee Management System</title>
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
            <h2 class="page-title">Manage Employees</h2>

            <div class="form-section">
                <h3>Add New Employee</h3>
                <form method="post" action="employee" class="form-inline">
                    <input type="hidden" name="action" value="add" />
                    <div class="form-group">
                        <label for="empId">ID (optional):</label>
                        <input id="empId" type="number" name="id" min="1" />
                    </div>
                    <div class="form-group">
                        <label for="empName">Name:</label>
                        <input id="empName" type="text" name="name" required/>
                    </div>
                    <div class="form-group">
                        <label for="empEmail">Email:</label>
                        <input id="empEmail" type="email" name="email" required/>
                    </div>
                    <div class="form-group">
                        <label for="empPhone">Phone:</label>
                        <input id="empPhone" type="text" name="phone" required/>
                    </div>
                    <div class="form-group">
                        <label for="empSalary">Salary:</label>
                        <input id="empSalary" type="number" step="0.01" name="salary" required/>
                    </div>
                    <input type="submit" value="Add Employee" class="btn btn-success"/>
                </form>
            </div>

            <div class="table-container">
                <h3>Employee List</h3>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Salary</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Employee> list = (List<Employee>) request.getAttribute("list");
                            if (list != null && !list.isEmpty()) {
                                for (Employee emp : list) {
                        %>
                        <tr>
                            <td><%=emp.getId()%></td>
                            <td><%=emp.getName()%></td>
                            <td><%=emp.getEmail()%></td>
                            <td><%=emp.getPhone()%></td>
                            <td><%=emp.getSalary()%></td>
                            <td>
                                <form class="inline-form" method="post" action="employee">
                                    <input type="hidden" name="action" value="delete" />
                                    <input type="hidden" name="id" value="<%=emp.getId()%>" />
                                    <input type="submit" value="Delete" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?');"/>
                                </form>
                                <form class="inline-form" method="post" action="employee">
                                    <input type="hidden" name="action" value="update" />
                                    <input type="hidden" name="id" value="<%=emp.getId()%>" />
                                    <div class="update-group">
                                        <input type="text" name="name" value="<%=emp.getName()%>" required/>
                                        <input type="email" name="email" value="<%=emp.getEmail()%>" required/>
                                        <input type="text" name="phone" value="<%=emp.getPhone()%>" required/>
                                        <input type="number" step="0.01" name="salary" value="<%=emp.getSalary()%>" required/>
                                        <input type="submit" value="Update" class="btn btn-primary btn-sm"/>
                                    </div>
                                </form>
                            </td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="6" style="text-align:center; padding: 20px;">No employees found. Add one using the form above.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <div class="action-links">
                <a href="dashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2026 Employee Management System. All rights reserved.</p>
    </footer>
</body>
</html>