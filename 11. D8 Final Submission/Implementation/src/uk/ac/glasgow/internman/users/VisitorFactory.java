package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.impl.UserFactory;

/**
 * A User-Factory for Visitor type users
 * 
 * @author Team L
 *
 */
public class VisitorFactory extends UserFactory {

	/**
	 * Returns a new Visitor object
	 * @param surname The visitors surname
	 * @param forename The Visitors forename
	 * @param GUID The visitors GUID
	 * @param password The new Visitors Password
	 * @return The new visitor object
	 */
	protected Visitor createVisitor(String surname, String forename, String GUID,String password) {
		return new Visitor(surname,forename,GUID,password);
	}
	
}
