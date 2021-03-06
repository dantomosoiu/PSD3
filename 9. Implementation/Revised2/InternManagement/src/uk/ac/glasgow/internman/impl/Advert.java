package uk.ac.glasgow.internman.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Role;


public class Advert implements Advertisement {

	private Advertisement.AdvertisementStatus status;
	private Map<Integer, Role> roles;
	private int roleMaxInt;
	private Employer employer;
	private String applicationDetails;
	private String comments;
	
	
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s, Map<Integer, Role> r, int m) {
		roles = r;
		status = s;
		roleMaxInt = m;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s) {
		roles = new HashMap<Integer, Role>();
		status = s;
		roleMaxInt = 0;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
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
