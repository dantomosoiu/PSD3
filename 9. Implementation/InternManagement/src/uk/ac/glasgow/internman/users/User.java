package uk.ac.glasgow.internman.users;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable {

	private String surname;
	private String forename;
	private String GUID;
	private String password;


	public User (String surname, String forename, String GUID, String password){
		this.surname = surname;
		this.forename = forename;
		this.GUID = GUID;
		this.password = password;
	}
	
	public boolean authenticate (String password){
		return this.password.equals(password);
	}
	
	@Override
	public boolean equals(Object o){
		if(o instanceof User){
			User u = (User) o;
			if(u.forename.equals(this.forename) && u.surname.equals(this.surname) && u.GUID.equals(this.GUID) && u.password.equals(this.password))
				return true;
		}
		return false;
	}
}
