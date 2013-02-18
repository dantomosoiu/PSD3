package uk.ac.glasgow.internman.offer;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Visit;

public class InternshipCon implements Internship{
	
	private String manager;
	private String managerEmail;
	private Employer employer;
	private boolean visitComplete;
	private Role role;
	private InternshipStatus status;
	private Visit visit;
	
	/**
	 * Creates instance of an internship
	 * @param manager
	 * 		manager of the internship
	 * @param managerEmail
	 * 		this managers email
	 * @param employer
	 * 		internship employer
	 * @param visitComplete
	 * 		boolean to store whether visit is complete
	 * @param role
	 * 		role during internship
	 * @param status
	 * 		status of this internship
	 * @param visit
	 * 		visit occurring on this internship
	 */
	public InternshipCon (String manager, String managerEmail, Employer employer,
							boolean visitComplete, Role role, InternshipStatus status, Visit visit){
		this.manager = manager;
		this.managerEmail = managerEmail;
		this.employer = employer;
		this.visitComplete = visitComplete;
		this.role = role;
		this.status = status;
		this.visit = visit;
	}
	
	/**
	 * returns managers email address
	 */
	public String getManagerEmail() {
		return managerEmail;
	}
	
	/**
	 * returns employer
	 */
	public Employer getEmployer() {
		return employer;
	}
	
	/**
	 * returns true if visit is complete, false otherwise
	 */
	public boolean isVisitComplete(){
		return visitComplete;
	}
	
	/**
	 * returns role of internship
	 */
	public Role getRole() {
		return role;
	}
	
	/**
	 * returns status of internship
	 */
	public InternshipStatus getStatus() {
		return status;
	}
	
	/**
	 * returns visit of internship
	 */
	public Visit getVisit() {
		return visit;
	}
	
	/**
	 * returns manager for this internship
	 */
	public String getManager() {
		return manager;
	}

	@Override
	public void setVisit(Visit v) {
		visit = v;
		
	}

	@Override
	public void setStatus(InternshipStatus s) {
		status = s;
		
	}
	
	
	
	
	

}
