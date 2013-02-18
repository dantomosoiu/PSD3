package uk.ac.glasgow.internman;

import java.util.Date;
import java.util.Map;

public interface Advertisement {

	public enum AdvertisementStatus {
		PENDING, PUBLISHED
	}

	Map<Integer, Role> getRoles();

	Employer getEmployer();

	String getApplicationDetails();

	String getComments();

	AdvertisementStatus getStatus();

	Role addNewRole(
			String title, String location, Date start, Date end, String description, Double salary);

}
