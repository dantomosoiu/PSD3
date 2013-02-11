package uk.ac.glasgow.internman.impl;

import uk.ac.glasgow.internman.users.User;


public class UserFactory {
	public  User createUser(String surname,String forename, String GUID, String password){
		return new User(surname,forename,GUID, password);
	}
}
