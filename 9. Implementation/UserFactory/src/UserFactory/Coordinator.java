package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * The Class Coordinator.
 */
public	class Coordinator extends Visitor {
	 
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
