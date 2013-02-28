package uk.ac.glasgow.internman.users;

/**
 * Interface for a user store. Allows storage and retrieval of generic user objects.
 * @author Team L
 *
 */
public interface UserStore {
	
	/**
	 * Adds a new user to the store.
	 * @param surname
	 * @param GUID
	 * @param forename
	 * @param password
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
