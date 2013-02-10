package uk.ac.glasgow.internman;

import java.util.Date;

public interface Role {

	public String getTitle();

	public Date getStart();

	public Date getEnd();

	public double getSalary();
	
	boolean isApproved();

	public String getLocation();
}
