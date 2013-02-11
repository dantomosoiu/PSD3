package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserStore.
 */
public interface UserStore {
	
	/**
	 * Adds a new user to the store.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 */
	public void addUser(
			String surname, 
			String forename,
			String GUID, 
			String password);
		
	/**
	 * Returns a user specified by the GUID, if authentication is
	 * successful.
	 * 
	 * @param GUID
	 *            the user's GUID
	 * @param password
	 *            the user's password
	 * @return the user specified by the GUID, if the password
	 * matches that of
	 *         the user.
	 */
	public User getUser(String GUID, String password);
	
}
