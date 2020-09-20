package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;


import java.sql.PreparedStatement;

import connectionManager.ConnectionClass;
import model.EmployeeModel;

public class EmployeeDao {
	
	public static List<EmployeeModel> getAllEmployee() throws SQLException{
		
		List<EmployeeModel> employee = new LinkedList<>();	
		ResultSet rs;
		
		rs=ConnectionClass.getPreparedStatement("select * from emp_tbl").executeQuery();
		
		while(rs.next()) {
			EmployeeModel emp = new EmployeeModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8));
			employee.add(emp);
		}
		
		return employee;
			
	}
	
	public static void addEmployee(EmployeeModel EM) throws SQLException {
		String sql = "insert into `emp_tbl` (`emp_fname`,`emp_lname`,`emp_dob`,`emp_section`,`emp_email`,`emp_phone`,`emp_address`) values('"+ EM.getEmp_fname()+"','"+EM.getEmp_lname()+"','"+EM.getEmp_dob()+"','"+EM.getEmp_section()+"','"+EM.getEmp_email()+"','"+EM.getEmp_phone()+"','"+EM.getEmp_address()+"')";
		PreparedStatement ps=ConnectionClass.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	
	public static void deleteEmployee(int emp_id) throws SQLException {
		String sql = "delete from `emp_tbl` where emp_id="+emp_id;
		PreparedStatement ps=ConnectionClass.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	
	public static EmployeeModel getEmployeeById(int emp_id) throws SQLException {
		EmployeeModel EM;
		String sql = "select * from emp_tbl where emp_id="+emp_id;
		ResultSet rs = ConnectionClass.getPreparedStatement(sql).executeQuery();
		rs.next();
		EM = new EmployeeModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8));
		return EM;
		
	}
	
	public static void UpdateEmployee(EmployeeModel EM) throws SQLException {
		String sql = "update `emp_tbl` set`emp_fname`='"+ EM.getEmp_fname()+"',`emp_lname`='"+EM.getEmp_lname()+"',`emp_dob`='"+EM.getEmp_dob()+"',`emp_section`='"+EM.getEmp_section()+"',`emp_email`='"+EM.getEmp_email()+"',`emp_phone`='"+EM.getEmp_phone()+"',`emp_address`='"+EM.getEmp_address()+"' where emp_id="+EM.getEmp_id();
		PreparedStatement ps=ConnectionClass.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	

}
