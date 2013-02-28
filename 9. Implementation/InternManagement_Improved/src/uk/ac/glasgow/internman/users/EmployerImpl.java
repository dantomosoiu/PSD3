package uk.ac.glasgow.internman.users;

import java.io.Serializable;

import uk.ac.glasgow.internman.Employer;


public class EmployerImpl implements Employer, Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String contact;
	private String password;
	
	public EmployerImpl(String name, String contact, String password) {
		this.name = name;
		this.contact = contact;
		this.password = password;
	}
	
	protected boolean authenticate (String password){
		return this.password.equals(password);
	}
	
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
