package uk.ac.glasgow.internman;

import java.util.Date;

/**
 * Manager of the offer system. Allows approval of offers and creation of self sourced-roles;
 * 
 * @author Team L
 *
 */
public interface OfferManagement {
	
	/**
	 * Notifies the acceptance of the provided role.
	 * @param role The role of which acceptance to notify about.
	 * @param managerName The manager to notify.
	 * @param managerEmail The email to send the notification to.
	 */
	void notifyAcceptedOffer(Role role, String managerName, String managerEmail);
	
	/**
	 * Approves an offer made to the student with the specified matriculation.
	 * @param matriculation of the student for which the offer is to be approved.
	 */
	void approveAcceptedOffer(String matriculation);
	
	/**
	 * Creates a new self-sourced role.
	 * @param title Title of the role.
	 * @param location Location of the role.
	 * @param start Start date of the role.
	 * @param end End date of the role.
	 * @param description Description of the role.
	 * @param salary Salary of the role. 
	 * @return an instance of the created role·.
	 */
	Role createNewSelfSourcedRole(String title, String location, Date start, Date end, String description, Double salary);

}
