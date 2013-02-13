package UserFactory;
import uk.ac.glasgow.internman.Visitor;
// TODO: Auto-generated Javadoc
/**
 * The Class Coordinator.
 */
public	class Coordinator extends VisitorImpl implements Visitor {
	 
 	/**
 	 * Instantiates a new coordinator.
 	 *
 	 * @param surname the surname
 	 * @param forename the forename
 	 * @param GUID the guid
 	 * @param password the password
 	 */
 	protected Coordinator(String surname, String forename, String GUID,
			String password) {
		super(surname, forename, GUID, password);
	}
	
	

}
