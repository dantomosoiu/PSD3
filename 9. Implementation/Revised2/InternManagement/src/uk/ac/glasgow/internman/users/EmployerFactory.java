package uk.ac.glasgow.internman.users;


public class EmployerFactory {

	protected EmployerImpl createEmployer(String name,String contact,String password) {
		return new EmployerImpl(name,contact,password);
		
	}
	
	
}
