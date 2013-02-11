package UserFactory;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

// TODO: Auto-generated Javadoc
/**
 * The Class User.
 */
public class User implements Serializable {

	/** The surname. */
	private String surname;
	
	/** The forename. */
	private String forename;
	
	/** The guid. */
	private String GUID;
	
	/** The password. */
	private String password;


	/**
	 * Instantiates a new user.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 */
	protected User (String surname, String forename, String GUID, String password){
		this.surname = surname;
		this.forename = forename;
		this.GUID = GUID;
		this.password = password;
	}
	
	/**
	 * Authenticate.
	 *
	 * @param password the password
	 * @return true, if successful
	 */
	protected boolean authenticate (String password){
		return this.password.equals(password);
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object o){
		if(o instanceof User){
			User u = (User) o;
			if(u.forename.equals(this.forename) && u.surname.equals(this.surname) && u.GUID.equals(this.GUID) && u.password.equals(this.password))
				return true;
		}
		return false;
	}

	
	/**
	 * Gets the forename.
	 *
	 * @return the forename
	 */
	public String getForename() {
		return forename;
	}

	/**
	 * Gets the surname.
	 *
	 * @return the surname
	 */
	public String getSurname() {
		return surname;
	}

	/**
	 * Sets the surname.
	 *
	 * @param surname the new surname
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}

	/**
	 * Gets the guid.
	 *
	 * @return the guid
	 */
	public String getGUID() {
		return GUID;
	}
	
	
}
