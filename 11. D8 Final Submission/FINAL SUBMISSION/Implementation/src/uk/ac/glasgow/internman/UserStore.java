package uk.ac.glasgow.internman;

import uk.ac.glasgow.internman.users.User;

public interface UserStore {
	
	/**
	 * Adds a new user to the store.
	 * @param surname surname of the user to be added.
	 * @param GUID Glasgow University ID of the user to be added.
	 * @param forename forename of the user to be added.
	 * @param password password of the user to be added.
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
	 * @param GUID the user's GUID
	 * @param password the user's password
	 * @return the user specified by the GUID, if the password matches that of the user.
	 */
	public User getUser(String GUID, String password);
	
}
