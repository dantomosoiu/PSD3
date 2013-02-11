package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.impl.UserFactory;


public class VisitorFactory extends UserFactory {

	protected Visitor createVisitor(String surname, String forename, String GUID,String password) {
		return new Visitor(surname,forename,GUID,password);
	}
	
}
