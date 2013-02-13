package uk.ac.glasgow.internman.impl;

import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Visit;

public class InternshipImpl implements Internship {

	private String manager;
	private String contact; //email address of manager
	private InternshipStatus internshipStatus;
	private Role role;
	private Employer employer; //?
	
	@Override
	public String getManager() {
		return this.manager;
	}

	@Override
	public String getManagerEmail() {
		return this.contact;
	}

	@Override
	public InternshipStatus getStatus() {
		return internshipStatus;
	}

	@Override
	public Employer getEmployer() {
		return this.employer;
	}

	@Override
	public Role getRole() {
		return this.role;
	}
	
	/** not implemented in current iteration **/
	@Override
	public Visit getVisit() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/** not implemented in current iteration **/
	@Override
	public boolean isVisitComplete() {
		// TODO Auto-generated method stub
		return false;
	}

}
