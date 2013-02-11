package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.users.Visitor;

public class Coordinator extends Visitor {
	 protected Coordinator(String surname, String forename, String GUID,
			String password) {
		super(surname, forename, GUID, password);
	}
	
	

}
