package uk.ac.glasgow.internman.advert;

import uk.ac.glasgow.internman.users.User;

public class EmployerImpl extends User implements uk.ac.glasgow.internman.Employer {
	private String companyName;
	private String email;
	
	
	/**
	 * Creates instance of Employer
	 * @param name
	 * 		Company name
	 * @param email
	 * 		Company email address
	 */
	public EmployerImpl(String name, String email, String surname, String forename, String GUID, String password) {
		super(surname, forename, GUID, password);
		
		this.companyName=name;
		this.email=email;
	}

	/**
	 * returns company name of employer
	 */
	@Override
	public String getName() {
		return companyName;
	}

	/**
	 * returns email address of company
	 */
	@Override
	public String getEmailAddress() {
		return email;
	}

}
