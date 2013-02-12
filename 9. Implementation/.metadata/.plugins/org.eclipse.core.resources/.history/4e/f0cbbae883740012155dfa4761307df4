package uk.ac.glasgow.internman.impl;

import java.util.Date;

import uk.ac.glasgow.internman.Role;

public class RoleImpl implements Role {

	private String title;
	private String location;
	private Date start;
	private Date end;
	private String description;
	private Double salary;
	private boolean approved = false;

	public RoleImpl(String title, String location, Date start, Date end,
			String description, Double salary) {
		super();
		this.title = title;
		this.location = location;
		this.start = start;
		this.end = end;
		this.description = description;
		this.salary = salary;
	}
	
	@Override
	public String getTitle() {
		return title;
	}
	

	public void setTitle(String title) {
		this.title = title;
	}


	@Override
	public Date getStart() {
		return start;
	}


	public void setStart(Date start) {
		this.start = start;
	}


	@Override
	public Date getEnd() {
		return end;
	}


	public void setEnd(Date end) {
		this.end = end;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public Double getSalary() {
		return salary;
	}


	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public boolean isApproved() {
		return this.approved;
	}

	@Override
	public String getLocation() {
		return null;
	}

}
