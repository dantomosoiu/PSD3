package uk.ac.glasgow.internman;

import java.util.Date;
import java.util.Map;

/**
 * Instance of an advertisment of an internship.
 * 
 * @author Team L
 *
 */
public interface Advertisement {

	/**
	 * Enum holding the possible statuses of an advertisement.
	 */
	public enum AdvertisementStatus {
		PENDING, PUBLISHED
	}

	/**
	 * Retrieves the list of roles assigned to this advertisement.
	 * @return a list of roles assigned to this advertisement.
	 */
	Map<Integer, Role> getRoles();

	/**
	 * Retrieves the employer who published this advertisement.
	 * @return an instance of the employer who publish this advertisement.
	 */
	Employer getEmployer();

	/**
	 * Gets a summary of the details for the application. 
	 * @return a string containing a summary of the details for the application.
	 */
	String getApplicationDetails();

	/**
	 * Gets the comments made by the coordinator for this advertisement.
	 * @return the string containing the comments made by the coordinator for this advertisement.
	 */
	String getComments();

	/**
	 * Gets the status of this advertisement.
	 * @return an instance of AdvertisementStatus containing the status of this advertisement.
	 */
	AdvertisementStatus getStatus();

	/**
	 * Adds a new role to this advertisement
	 * @param title Title of the role
	 * @param location Location of the role
	 * @param start Start date of the role
	 * @param end End date of the role
	 * @param description Description of the role
	 * @param salary salary of the role
	 * @return the created role
	 */
	Role addNewRole(
			String title, String location, Date start, Date end, String description, Double salary);

}
