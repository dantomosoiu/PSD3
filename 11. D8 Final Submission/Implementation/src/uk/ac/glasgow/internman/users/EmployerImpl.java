package uk.ac.glasgow.internman.users;

import java.io.Serializable;

import uk.ac.glasgow.internman.Employer;

/**
 * Implementation of Employer type User.
 * 
 * @author Team L
 *
 */
public class EmployerImpl implements Employer, Serializable {

	private static final long serialVersionUID = 1L;
	private String name;
	private String contact;
	private String password;
	
	/**
	 * EmployerImpl constructor
	 * 
	 * @param name Employer Name
	 * @param contact Employer contact email
	 * @param password New Employer password
	 */
	public EmployerImpl(String name, String contact, String password) {
		this.name = name;
		this.contact = contact;
		this.password = password;
	}
	
	/**
	 * Authenticates a provided password is the same as this employers
	 * 
	 * @param password The password to compare with this EmployerImpl's
	 * @return a boolean indicating if the passwords match.
	 */
	protected boolean authenticate (String password){
		return this.password.equals(password);
	}
	
	/**
	 * Compares this Employer with another object.
	 * 
	 * @param o An Object to compare against this one
	 * @return A boolean indicating whether the objects are the the same EmployerImpl Object
	 */
	public boolean equals(Object o){
		if(o instanceof EmployerImpl){
			EmployerImpl e = (EmployerImpl) o;
			if(this.name.equals(e.name) && this.contact.equals(e.contact) && this.password.equals(e.password)){
				return true;
			}
		}
		return false;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public String getEmailAddress() {
		return contact;
	}
}
