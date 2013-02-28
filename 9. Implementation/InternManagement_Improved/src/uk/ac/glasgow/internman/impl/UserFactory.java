package uk.ac.glasgow.internman.impl;

import uk.ac.glasgow.internman.users.User;

/**
 * User Factory used to create users.
 * @author Team L
 *
 */
public class UserFactory {
	
	/**
	 * Adds a new user to the system.
	 * @param surname Surname of the new user.
	 * @param forename Forename of the new user.
	 * @param GUID Glasgow University ID of the new user.
	 * @param password Password of the new user.
	 * @return An instance of the created user.
	 */
	public  User createUser(String surname,String forename, String GUID, String password){
		return new User(surname,forename,GUID, password);
	}
}
