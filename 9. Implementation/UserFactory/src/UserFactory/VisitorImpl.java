package UserFactory;

import uk.ac.glasgow.internman.Visitor;

// TODO: Auto-generated Javadoc
/**
 * The Class Visitor.
 */
public class VisitorImpl extends User implements Visitor{

	/**
	 * Instantiates a new visitor.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 */
	protected VisitorImpl(String surname, String forename, String GUID, String password) {
		super(surname, forename, GUID, password);
	}
	
	/**
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName(){
		return (this.getForename()+ " "+ this.getSurname());
	}
	
}
