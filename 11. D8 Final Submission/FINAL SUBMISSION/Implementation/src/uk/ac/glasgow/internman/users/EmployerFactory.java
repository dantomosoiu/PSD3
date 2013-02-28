package uk.ac.glasgow.internman.users;

/**
 * A basic user-factory for Employer objects.
 * 
 * @author Team L
 *
 */
public class EmployerFactory {

	/**
	 * Creates a new EmployerImpl Object
	 * 
	 * @param name Employer Name
	 * @param contact Employer contact email
	 * @param password New Employer account password
	 * @return Returns a new EmployerImpl Object
	 */
	protected EmployerImpl createEmployer(String name,String contact,String password) {
		return new EmployerImpl(name,contact,password);
		
	}
	
	
}
