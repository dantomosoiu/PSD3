package uk.ac.glasgow.internman.advert;

import java.io.Serializable;
import java.util.Date;

public class RoleImpl implements uk.ac.glasgow.internman.Role, Serializable {
	
	private String title;
	private Date startDate;
	private Date endDate;
	private Double salary;
	private boolean approved;
	private String location;
	
	/**
	 * Creates instance of a Role
	 * @param title
	 * 		title of the role, eg software engineer, web developer
	 * @param startDate
	 * 		start date of this role
	 * @param endDate
	 * 		end date of this role
	 * @param salary
	 * 		salary that this role pays
	 * @param approved
	 * 		whether the role is approved, by default set to false
	 * @param location
	 * 		location of role
	 */
	public RoleImpl(String title, Date startDate, Date endDate, Double salary, boolean approved, String location) {
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
		this.salary = salary;
		this.approved = approved;
		this.location = location;
	}

	/**
	 * returns role title
	 */
	@Override
	public String getTitle() {
		return this.title;
	}

	/**
	 * returns start date of role
	 */
	@Override
	public Date getStart() {
		return this.startDate;
	}
	
	/**
	 * returns end date of role
	 */
	@Override
	public Date getEnd() {
		return this.endDate;
	}

	/**
	 * returns salary of role
	 */
	@Override
	public Double getSalary() {
		return this.salary;
	}

	/**
	 * returns true if role is approved, else false
	 */
	@Override
	public boolean isApproved() {
		return this.approved;
	}

	/**
	 * returns location of role
	 */
	@Override
	public String getLocation() {
		return this.location;
	}

}
