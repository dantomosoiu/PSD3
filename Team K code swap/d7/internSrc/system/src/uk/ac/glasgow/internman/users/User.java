package uk.ac.glasgow.internman.users;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable{

	protected String surname;
	protected String forename;
	protected String GUID;
	protected String password;
		
	public User (String surname, String forename, String GUID, String password){
		this.surname = surname;
		this.forename = forename;
		this.GUID = GUID;
		this.password = password;
	}
	
	protected boolean authenticate (String password){
		return this.password.equals(password);
	}
}
