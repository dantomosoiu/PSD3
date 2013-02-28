package uk.ac.glasgow.internman;

import java.util.Date;
import uk.ac.glasgow.internman.users.Status;

public interface Role {

	public String getTitle();

	public Date getStart();

	public Date getEnd();

	public Double getSalary();
	
	public Status getStatus();

	public String getLocation();

	public boolean isApproved();
}
