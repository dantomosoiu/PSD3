package uk.ac.glasgow.internman.visit;

import uk.ac.glasgow.internman.Visitor;
import uk.ac.glasgow.internman.users.User;

public class VisitorImpl extends User implements Visitor{
	
	/**
	 * Creates instance of an academic visitor
	 * @param surname
	 * 		surname of the visitor
	 * @param forename
	 * 		forename of the visitor
	 * @param GUID
	 * 		GUID of the visitor
	 * @param password
	 * 		password of the visitor
	 */
	public VisitorImpl(String surname, String forename, String GUID, String password){
		super(surname,forename,GUID,password);
		
	}
	
	/**
	 * returns forename and surname of the visitor
	 */
	@Override
	public String getName() {
		return this.forename + ' ' + this.surname;
	}
	
	/**
	 * authenticates visitors password
	 */
	protected boolean authenticate (String password){
		return this.password.equals(password);
	}
}
