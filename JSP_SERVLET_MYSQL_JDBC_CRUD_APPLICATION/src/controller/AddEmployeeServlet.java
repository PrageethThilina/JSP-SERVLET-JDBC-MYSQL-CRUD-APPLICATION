package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmployeeModel;

/**
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String emp_fname = request.getParameter("emp_fname");
		String emp_lname = request.getParameter("emp_lname");
		String emp_dob = request.getParameter("emp_dob");
		String emp_section = request.getParameter("emp_section");
		String emp_email = request.getParameter("emp_email");
		String emp_phone = request.getParameter("emp_phone");
		String emp_address = request.getParameter("emp_address");
		
		EmployeeModel newEmp = new EmployeeModel(0,emp_fname, emp_lname, emp_dob, emp_section, emp_email, emp_phone, emp_address);
		try {
			dao.EmployeeDao.addEmployee(newEmp);
			System.out.println("Added");
		}
		catch (SQLException e){
			e.printStackTrace();
			System.out.println("Error !");
		}
		response.sendRedirect("index.jsp");

	}

}
