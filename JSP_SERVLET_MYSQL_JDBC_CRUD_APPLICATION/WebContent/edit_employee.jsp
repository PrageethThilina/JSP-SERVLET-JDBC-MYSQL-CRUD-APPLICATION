<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.EmployeeDao"%>
<%@ page import="model.EmployeeModel"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>

    <jsp:include page="navbar.jsp" />
    <jsp:include page="header.jsp" />

    <style>
        .container {
            margin-top: 30px;
        }

        h2 {
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

</head>

<body>

<% 
String id = request.getParameter("emp_id");
int emp_id = Integer.parseInt(id);
EmployeeModel EM = EmployeeDao.getEmployeeById(emp_id);
%>

    <div class="container">
        <div class="row">
            <div class="col-md-6 card mx-auto">
                <h2 class="text-center">Update Employee Details</h2>
                <form action="EditEmployeeServlet" method="POST">

    
                    <input type="hidden" name="emp_id" value='<%=EM.getEmp_id() %>' />
                    <div class="form-group">
                        <label for="">First Name</label>
                        <input type="text" class="form-control" name="emp_fname"
                            value='<%=EM.getEmp_fname() %>' required>
                    </div>
                    <div class="form-group">
                        <label for="">Last Name</label>
                        <input type="text" class="form-control" name="emp_lname"
                            value='<%=EM.getEmp_lname() %>' required>
                    </div>
                    <div class="form-group">
                        <label for="">Date of Birth</label>
                        <input type="date" class="form-control" name="emp_dob" value='<%=EM.getEmp_dob() %>'
                            required>
                    </div>
                    <div class="form-group">
                        <label for="">Section</label>
                        <select class="form-control" name="emp_section" required>
                            <option selected><%=EM.getEmp_section() %></option>
                            <option value="Packing">Packing</option>
                            <option value="Cutting">Cutting</option>
                            <option value="Mixing">Mixing</option>
                            <option value="Stores">Stores</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="emp_email"
                            value='<%=EM.getEmp_email() %>' required>
                    </div>
                    <div class="form-group">
                        <label for="">Phone</label>
                        <input type="tel" class="form-control" name="emp_phone" value='<%=EM.getEmp_phone() %>'
                            required>
                    </div>
                    <div class="form-group">
                        <label for="">Address</label>
                        <textarea rows="3" class="form-control" name="emp_address"
                            required><%=EM.getEmp_address() %></textarea>
                    </div>
                    <div class="col-md-6 mx-auto">
                        <button type="submit" class="btn btn-info"
                            style="width: 100%;margin-bottom: 20px;">Submit</button>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</body>

</html>

