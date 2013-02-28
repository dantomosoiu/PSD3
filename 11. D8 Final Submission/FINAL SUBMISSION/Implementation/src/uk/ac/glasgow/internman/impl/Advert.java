package uk.ac.glasgow.internman.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Role;

/**
 * Instance of an advertisment of an internship.
 * 
 * @author Team L
 *
 */
public class Advert implements Advertisement {
	
	private Advertisement.AdvertisementStatus status;
	private Map<Integer, Role> roles;
	private int roleMaxInt;
	private Employer employer;
	private String applicationDetails;
	private String comments;
	
	/**
	 * Constructor for the Advert class.
	 * @param e the employer who submitted the advert
	 * @param d the details of the advert
	 * @param c the comments made by the coordinator
	 * @param s the status of the created advertisement
	 * @param r the roles to be assigned to this advertisement
	 * @param m the max number of roles for this position
	 */
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s, Map<Integer, Role> r, int m) {
		roles = r;
		status = s;
		roleMaxInt = m;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	/**
	 * Constructor for the Avert class
	 * 
	 * @param e the employer who submitted the advert
	 * @param d the details of the advert
	 * @param c the comments made by the coordinator
	 * @param s the status of the created advertisement
	 */
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s) {
		roles = new HashMap<Integer, Role>();
		status = s;
		roleMaxInt = 0;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	/**
	 * Constructor for the Avert class
	 * 
	 * @param e the employer who submitted the advert
	 * @param d the details of the advert
	 * @param c the comments made by the coordinator
	 */
	public Advert(Employer e, String d, String c) {
		roles = new HashMap<Integer, Role>();
		status = Advertisement.AdvertisementStatus.PENDING;
		roleMaxInt = 0;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	public Map<Integer, Role> getRoles() {
		return roles;
	}

	public Employer getEmployer() {
		return employer;
	}

	public String getApplicationDetails() {
		return applicationDetails;
	}

	public String getComments() {
		return comments;
	}

	public AdvertisementStatus getStatus() {
		return status;
	}
	
	/**
	 * Sets the status of the advertisement to status s and sets the comments as c. 
	 * @param s The status to set for the advertisement.
	 * @param c The comments for the advertisement.
	 */
	public void publish(AdvertisementStatus s, String c) {
		status = s;
		comments = c;
	}

	public Role addNewRole( String title, String location, Date start, Date end, String description, Double salary) {
		roleMaxInt += 1;
		Role r = new RoleImpl(title, location, start, end, description, salary);
		roles.put(roleMaxInt, r);
		return r;
	}
	
}
