package uk.ac.glasgow.internman;

import java.util.Date;
import uk.ac.glasgow.internman.users.Status;

/**
 * Instance of a role associated with a placement.
 * 
 * @author Team L
 *
 */
public interface Role {

	/**
	 * Gets the title of the role.
	 * @return the title of the role.
	 */
	public String getTitle();

	/** Gets the start date of the role.
	 * @return the start date of the role.
	 */
	public Date getStart();

	/** Gets the end date of the role.
	 * @return the end date of the role.
	 */
	public Date getEnd();

	/** Gets the salary of the role.
	 * @return the salary of the role.
	 */
	public Double getSalary();
	
	/** Gets the status of the role.
	 * @return the status  of the role.
	 */
	public Status getStatus();

	/** Gets the location of the role.
	 * @return the location of the role.
	 */
	public String getLocation();

	/** 
	 * Returns a boolean telling whether the role has been approved by the coordinator.
	 * @return a boolean telling whether the role has been approved by the coordinator.
	 */
	public boolean isApproved();
}
