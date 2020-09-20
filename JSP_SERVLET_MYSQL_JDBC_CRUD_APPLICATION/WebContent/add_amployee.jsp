<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.EmployeeDao"%>
<%@ page import="model.EmployeeModel"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>

   
    <jsp:include page="navbar.jsp" />
    <jsp:include page="header.jsp" />

    <style>
        .container {
            margin-top: 30px;
            margin-bottom: 30px;
        }

        h2 {
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-6 card mx-auto" style="margin-top: 20px;">
                <h2 class="text-center">Add employee</h2>
                <form action="AddEmployeeServlet" method="POST">
                    <div class="form-group">
                        <label for="">First Name</label>
                        <input type="text" class="form-control" name="emp_fname" placeholder="First name" required>
                    </div>
                    <div class="form-group">
                        <label for="">Last Name</label>
                        <input type="text" class="form-control" name="emp_lname" placeholder="Last name"  required>
                    </div>
                    <div class="form-group">
                        <label for="">Date of Birth</label>
                        <input type="date" class="form-control" name="emp_dob" placeholder="dd/mm/yyyy"  required>
                    </div>
                    <div class="form-group">
                        <label for="">Section</label>
                        <select class="form-control" name="emp_section" placeholder="eg: packing"  required>
                            <option value="" selected>Choose an option</option>
                            <option value="Packing">Packing</option>
                            <option value="Cutting">Cutting</option>
                            <option value="Mixing">Mixing</option>
                            <option value="Stores">Stores</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="emp_email" placeholder="user@gmail.com"  required>
                    </div>
                    <div class="form-group">
                        <label for="">Phone</label>
                        <input type="tel" class="form-control" name="emp_phone" placeholder="071 6925322"  required>
                    </div>
                    <div class="form-group">
                        <label for="">Address</label>
                        <textarea rows="3" class="form-control" name="emp_address" placeholder="Address"  required></textarea>
                    </div>
                    <div class="col-md-6 mx-auto">
                        <button type="submit" class="btn btn-info" style="width: 100%;margin-bottom: 20px;">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</body>

</html>
