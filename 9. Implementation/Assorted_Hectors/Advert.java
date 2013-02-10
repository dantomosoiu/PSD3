import java.util.Date;
import java.util.Map;

import Advertisement.AdvertisementStatus;


public class Advert implements Advertisement {

	private Advertisement.AdvertisementStatus status;
	private Map<Integer, PlRole> roles;
	private int roleMaxInt;
	private Employer employer;
	private String applicationDetails;
	private String comments;
	
	
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s, Map<Integer, Role> r, int m) {
		roles = (Map<Integer, PlRole>)r;
		status = s;
		roleMaxInt = m;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	public Advert(Employer e, String d, String c, Advertisement.AdvertisementStatus s) {
		roles = new Map<Integer, PlRole>();
		status = s;
		roleMaxInt = 0;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	public Advert(Employer e, String d, String c) {
		roles = new Map<Integer, PlRole>();
		status = Advertisement.AdvertisementStatus.PENDING;
		roleMaxInt = 0;
		employer = e;
		applicationDetails = d;
		comments = c;
	}
	
	public Map<Integer, Role> getRoles() {
		return (Map<Integer, Role>)roles;
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
	
	public void setStatus(AdvertisementStatus s) {
		status = s;
	}

	public Role addNewRole( String title, String location, Date start, Date end, String description, double salary) {
		roleMaxInt += 1;
		roles.put(roleMaxInt, new PlRole(title, location, start, end, description, salary));
	}
	
}
