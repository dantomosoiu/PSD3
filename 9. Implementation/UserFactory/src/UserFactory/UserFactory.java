package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating User objects.
 */
public class UserFactory {
	
	/**
	 * Creates a new User object.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @return the user
	 */
	protected  User createUser(String surname,String forename, String GUID, String password){
		return new User(surname,forename,GUID, password);
	}
}
