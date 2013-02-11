package uk.ac.glasgow.internman;

import java.util.Date;

public interface OfferManagement {
	
	void notifyAcceptedOffer(Role role, String managerName, String managerEmail);
	
	void approveAcceptedOffer(String matriculation);
	
	Role createNewSelfSourcedRole(String title, String location, Date start, Date end, String description, Double salary);

}
