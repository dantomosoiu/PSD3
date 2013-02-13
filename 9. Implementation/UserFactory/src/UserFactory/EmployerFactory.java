package UserFactory;
import uk.ac.glasgow.internman.*;
// TODO: Auto-generated Javadoc
/**
 * A factory for creating Employer objects.
 */
public class EmployerFactory {

	/**
	 * Creates a new Employer object.
	 *
	 * @param name the name
	 * @param contact the contact
	 * @param password the password
	 * @return the employer
	 */
	protected Employer createEmployer(String name,String contact,String password) {
		return new EmployerImpl(name,contact,password);
		
	}
	
	
}
