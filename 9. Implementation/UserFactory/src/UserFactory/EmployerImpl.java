package UserFactory;

import java.io.Serializable;
import uk.ac.glasgow.internman.*;

// TODO: Auto-generated Javadoc
/**
 * The Class EmployerImpl .
 */
public class EmployerImpl  implements Serializable, Employer{
	
	/** The name. */
	private String name;
	
	/** The contact. */
	private String contact;
	
	/** The password. */
	private String password;
	
	/**
	 * Instantiates a new employer.
	 *
	 * @param name the name
	 * @param contact the contact
	 * @param password the password
	 */
	public EmployerImpl (String name, String contact, String password) {
		this.name = name;
		this.contact = contact;
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
	public boolean equals(Object o){
		if(o instanceof EmployerImpl ){
			EmployerImpl  e = (EmployerImpl ) o;
			if(this.name.equals(e.name) && this.contact.equals(e.contact) && this.password.equals(e.password)){
				return true;
			}
		}
		return false;
	}

	/**
	 * Gets the name.
	 *
	 * @return the name
	 */
	public String getName() {
		return name;
	}


	/**
	 * Gets the email address.
	 *
	 * @return the email address
	 */
	public String getEmailAddress() {
		return contact;
	}

	
	
}
