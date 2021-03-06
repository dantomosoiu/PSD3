package uk.ac.glasgow.internman.impl;

import java.util.Date;
import java.util.Map;
import java.util.Set;

import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Student;
import uk.ac.glasgow.internman.UoGGrade;
import uk.ac.glasgow.internman.users.User;
import uk.ac.glasgow.internman.users.UserStore;
import uk.ac.glasgow.internman.users.UserStoreImpl;

/**
 * A realisation of the facade interface InternMan
 * 
 * @author Hector Grebbell
 * @author Michael Kilian
 * @author Tony Lau
 * @author Peeranat Fupongsiripan
 * 
 */
public class InternManImpl implements InternMan {

	private UserStoreImpl users; 
	private User currentUser;
	private UserFactory userfac;
	private OfferManagementImpl offerman;
	private AdvertManagement adman;

	public InternManImpl(UserStore users){
		this.users = (UserStoreImpl) users;
	}

	/**
	 * user logs into system, and is set as
	 * current user
	 */
	@Override
	public boolean login(String userName, String password) {
		uk.ac.glasgow.internman.users.User user = users.getUser(userName, password);
		if (user != null){
			currentUser = user;
			return true;
		}
		else return false;
	}

	/**
	 * get handle on current user. 
	 * cf 'whoami' in bash
	 */
	@Override
	public User getCurrentUser() {
		return currentUser;
	}

	/** 
	 * get set of advertisements. Each ad has
	 * a unique integer label.
	 * Filter as follows:
	 *  - student sees all published adverts
	 *  - employer sees all adverts it has posted
	 *  - co-ordinator sees all adverts
	 */
	@Override
	public Map<Integer, Advertisement> getAdvertisements() {
		return adman.getAllAds();
	}

	/**
	 * get set of students who are eligible to
	 * apply for placements.
	 * Map is keyed
	 * on GUID as string.
	 */
	@Override
	public Map<String, Student> getStudents() {
		//FIX ME!
		return null;
	}

	/**
	 * coordinator only. Sets up new employer in system.
	 * This should automatically create an account (username/password)
	 * for that employer.
	 */
	@Override
	public Employer registerNewEmployer(String name, String emailAddress) {
		//FIX ME
		return null;
	}

	/**
	 * Get handle on currently selected employer.
	 */
	@Override
	public Employer getCurrentEmployer() {
		if (currentUser instanceof Employer) {
			return (Employer) currentUser;	
		}
		else {
			return null;
		}
	}

	/**
	 * coordinator and employer. Adds a new (not-yet-approved)
	 * advert into the system. Advert is tagged with creator name
	 * and date. Details about the placement and how to apply are
	 * included in the monolithic string.
	 */
	@Override
	public Advertisement createNewAdvertisement(String applicationDetails) {
		Advert a = new Advert(null, applicationDetails, null);
		adman.addAd(a);
		return a;
	}

	/**
	 * all users. Get a handle on advert with supplied index.
	 * Note that this should return null if user does not have
	 * privileges to view this advert (unpublished to student,
	 * or not created by this employer).
	 */
	@Override
	public Advertisement selectAdvertisement(Integer index) {
		return adman.getAd(index);
	}

	/**
	 * gets handle on a role for an advertisement, specified
	 * by index. Same permissions constraints apply as
	 * for selectAdvertisement
	 */
	@Override
	public Role selectRole(Integer advertisementIndex, Integer roleIndex) {
		return adman.getAd(advertisementIndex).getRoles().get(roleIndex);
	}

	/**
	 * coordinator only. Gets handle on Student
	 * from supplied id. Returns null if student not
	 * in students map
	 */
	@Override
	public Student selectStudent(String matriculation) {
		// FIX ME
		return (Student) users.getStudents().get(matriculation);
	}

	/**
	 * coordinator only. Makes ad visible to students. Sends feedback
	 * to employer by email.
	 */
	@Override
	public void publishAdvertisement(Integer advertisementIndex, String comment) {
		adman.publish(advertisementIndex, comment);
	}

	/**
	 * student only. Sends message to coordinator (email).
	 */
	@Override
	public void notifyAcceptedOffer(Role role, String managerName,
			String managerEmail) {
		System.out.println("Send an email to " + managerEmail + " because " + role.getTitle() + " Accepted");
		
	}

	/**
	 * coordinator only. Approves offer most recently accepted
	 * by student with this matriculation id.
	 */
	@Override
	public void approveAcceptedOffer(String matriculation) {
		offerman.approveAcceptedOffer(matriculation);
		
	}

	/** 
	 * student only. Inform coordinator of independently arranged 
	 * placement. Sends email to coordinator, sets up new placement
	 * details in database. Coordinator must explicitly approve
	 * self sourced role.
	 */
	@Override
	public Role createNewSelfSourcedRole(String title, String location,
			Date start, Date end, String description, Double salary) {
		offerman.createNewSelfSourcedRole(title, location, start, end, description, salary);
		return null;
	}

	/**
	 * not implemented in current iteration
	 * coordinator only. Sends email to student, visitor and
	 * employer manager to let them know about assignment.
	 */
	@Override
	public void assignAcademicVisitor(String matriculation, String visitorName) {
		System.out.println("Send an email to " + matriculation + ", " + visitorName + " & employer to let them know about the assignment");
	}


	/**
	 * not implemented in current iteration
	 * coordinator only. Records grade for visit. Email to student and employer.
	 */
	@Override
	public void recordVisitAssessment(String matriculation, UoGGrade grade,
			String description) {
		//Add grade thing
		System.out.println("Send an email to " + matriculation + " & employer to let them know about the grade");
	}

}



