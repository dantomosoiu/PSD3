package uk.ac.glasgow.internman;

/**
 * Instance of an internship.
 * 
 * @author Team L
 */
public interface Internship {

	/**
	 * Enum holding the possible statuses of an intership.
	 * 
	 */
	public enum InternshipStatus {
		APPLYING, WITHDRAWN, ACCEPTED, APPROVED
	}
	
	/**
	 * Gets the current manager.
	 * @return an instance of the current manager.
	 */
	String getManager();

	/**
	 * Gets the email of the manager assigned to this intership.
	 * @return the email of the manager assigned to this internship.
	 */
	String getManagerEmail();

	/**
	 * Returns a boolean saying whether the visit is complete.
	 * @return a boolean saying whether the visit is complete.
	 */
	boolean isVisitComplete();

	/**
	 * Gets the employer of the current internship.
	 * @return the employer of the current internship.
	 */
	Employer getEmployer();

	/**
	 * Returns the role associated with the current internship.
	 * @return the role associated with the current internship.
	 */
	Role getRole();

	/**
	 * Returns the status of the current internship.
	 * @return the status of the current internship.
	 */
	InternshipStatus getStatus();

	/**
	 * Returns the visit instance assigned to the internship. 
	 * @return the visit instance assigned to the internship.
	 */
	Visit getVisit();
}
