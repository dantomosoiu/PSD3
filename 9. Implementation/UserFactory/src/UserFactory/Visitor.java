package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * The Class Visitor.
 */
public class Visitor extends User {

	/**
	 * Instantiates a new visitor.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 */
	protected Visitor(String surname, String forename, String GUID, String password) {
		super(surname, forename, GUID, password);
	}
	
	/**
	 * Gets the name.
	 *
	 * @return the name
	 */
	String getName(){
		return (this.getForename()+ " "+ this.getSurname());
	}
	
}
