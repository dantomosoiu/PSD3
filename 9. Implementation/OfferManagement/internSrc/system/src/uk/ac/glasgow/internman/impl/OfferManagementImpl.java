package uk.ac.glasgow.internman.impl;

import java.util.Date;

import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.OfferManagement;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Student;

public class OfferManagementImpl implements OfferManagement {
	
	public OfferManagementImpl(InternMan facade, SystemDialogue dialogue) {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
     * student only. Sends message to coordinator (email).
     */
	@Override
	public void notifyAcceptedOffer(Role role, String managerName,
			String managerEmail) {
		// TODO Auto-generated method stub
		
	}

	 /**
     * coordinator only. Approves offer most recently accepted
     * by student with this matriculation id.
     */
	@Override
	public void approveAcceptedOffer(String matriculation) {
		// TODO Auto-generated method stub
	}

    /** 
     * student only. Inform coordinator of independently arranged 
     * placement. Sends email to coordinator, sets up new placement
     * details in database. Coordinator must explicitly approve
     * self sourced role.
     */
	@Override
	public Role createNewSelfSourcedRole(String title, String location,
			Date start, Date end, String description, Double salary) {
		
		RoleImpl newSelfSourcedRole = new RoleImpl(title, location, start, end, description, salary);
		
		return newSelfSourcedRole;
		
	}
	
	

}
