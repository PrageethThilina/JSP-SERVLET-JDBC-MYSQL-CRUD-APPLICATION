package model;

public class EmployeeModel {
	
	private int emp_id;
	private String emp_fname;
	private String emp_lname;
	private String emp_dob;
	private String emp_section;
	private String emp_email;
	private String emp_phone;
	private String emp_address;
	
	public EmployeeModel(int emp_id, String emp_fname, String emp_lname, String emp_dob, String emp_section,
			 String emp_email, String emp_phone, String emp_address) {
		super();
		this.emp_id = emp_id;
		this.emp_fname = emp_fname;
		this.emp_lname = emp_lname;
		this.emp_dob = emp_dob;
		this.emp_section = emp_section;
		this.emp_email = emp_email;
		this.emp_phone = emp_phone;
		this.emp_address = emp_address;
	}

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_fname() {
		return emp_fname;
	}

	public void setEmp_fname(String emp_fname) {
		this.emp_fname = emp_fname;
	}

	public String getEmp_lname() {
		return emp_lname;
	}

	public void setEmp_lname(String emp_lname) {
		this.emp_lname = emp_lname;
	}

	public String getEmp_dob() {
		return emp_dob;
	}

	public void setEmp_dob(String emp_dob) {
		this.emp_dob = emp_dob;
	}

	public String getEmp_section() {
		return emp_section;
	}

	public void setEmp_section(String emp_section) {
		this.emp_section = emp_section;
	}


	public String getEmp_email() {
		return emp_email;
	}

	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	
	public String getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}


	public String getEmp_address() {
		return emp_address;
	}

	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	
	
	

}
