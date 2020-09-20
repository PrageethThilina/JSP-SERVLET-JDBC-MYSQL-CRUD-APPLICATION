<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.EmployeeDao"%>
<%@ page import="model.EmployeeModel"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP CRUD Application</title>

<jsp:include page="navbar.jsp" />
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="css/jquery-dataTables.min.css">

<style>
.container-fluid {
	margin-top: 30px;
	margin-bottom: 30px;
}

h2 {
	margin-top: 20px;
	margin-bottom: 20px;
}

th {
	width: 400px;	
}
.header{
	background-color: rgb(11, 141, 43) !important;
}

.table {
	display: block;
	overflow-x: auto;
	overflow-y: auto;
	white-space: nowrap;
}
</style>

</head>
<body>

	<!-- View employee list -->
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<a class="btn btn-primary" style="float: right;"
					href="add_amployee.jsp">Add Employee</a>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<h2 class="text-center">Employee List</h2>

				<table
					class="table table-hover table-bordered table-responsive table-success"
					id="emp_table">
					<thead>
						<tr>
							<th class="text-center header">ID</th>
							<th class="text-center header">First Name</th>
							<th class="text-center header">Last Name</th>
							<th class="text-center header">Date of Birth</th>
							<th class="text-center header">Section</th>
							<th class="text-center header">Email</th>
							<th class="text-center header">Phone</th>
							<th class="text-center header">Address</th>
							<th class="text-center header">Action</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<EmployeeModel> employee = EmployeeDao.getAllEmployee();
						Iterator<EmployeeModel> EM = employee.iterator();

						while (EM.hasNext()) {
							EmployeeModel emp = EM.next();
						%>

						<tr>
							<td class="text-center"><%=emp.getEmp_id()%></td>
							<td class="text-center"><%=emp.getEmp_fname()%></td>
							<td class="text-center"><%=emp.getEmp_lname()%></td>
							<td class="text-center"><%=emp.getEmp_dob()%></td>
							<td class="text-center"><%=emp.getEmp_section()%></td>
						    <td class="text-center"><%=emp.getEmp_email()%></td>						
							<td class="text-center"><%=emp.getEmp_phone()%></td>
							<td class="text-center"><%=emp.getEmp_address()%></td>
							<td class="text-center">
								<a class="btn btn-warning" href="edit_employee.jsp?emp_id=<%=emp.getEmp_id()%>">Edit</a>
								<a class="btn btn-danger" href="DeleteEmployeeServlet?emp_id=<%=emp.getEmp_id()%>">Delete</a>
							</td>
						</tr>

						<%
							}
						%>
					</tbody>
				</table>



			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
	<script src="js/jquery.js"></script>
	<script src="js/jquery-dataTables.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#emp_table').dataTable();
		})
	</script>
</body>
</html>