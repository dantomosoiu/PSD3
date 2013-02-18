package uk.ac.glasgow.internman;

import java.util.Date;
import java.util.Map;

import uk.ac.glasgow.internman.users.User;

/**
 * Facade for internship management system.
 * Implement this facade interface as the top-level class in your
 * internship management component-based system.
 * Acceptance test suite and user interfaces will
 * couple with this facade.
 */
public interface InternMan {

    /**
     * user logs into system, and is set as
     * current user
     */
    boolean login(String userName, String password);
	
    /**
     * get handle on current user. 
     * cf 'whoami' in bash
     */
    User getCurrentUser();

    /** 
     * get set of advertisements. Each ad has
     * a unique integer label.
     * Filter as follows:
     *  - student sees all published adverts
     *  - employer sees all adverts it has posted
     *  - co-ordinator sees all adverts
     */
    Map<Integer,Advertisement> getAdvertisements();
	
    /**
     * get set of students who are eligible to
     * apply for placements.
     * Map is keyed
     * on GUID as string.
     */
    Map<String,Student> getStudents();
	
    /**
     * coordinator only. Sets up new employer in system.
     * This should automatically create an account (username/password)
     * for that employer.
     */
    Employer registerNewEmployer(String name, String emailAddress);
    
    /**
     * Get handle on currently selected employer.
     */
    Employer getCurrentEmployer();

    /**
     * coordinator and employer. Adds a new (not-yet-approved)
     * advert into the system. Advert is tagged with creator name
     * and date. Details about the placement and how to apply are
     * included in the monolithic string.
     */
    Advertisement createNewAdvertisement(String applicationDetails);
			
    /**
     * all users. Get a handle on advert with supplied index.
     * Note that this should return null if user does not have
     * privileges to view this advert (unpublished to student,
     * or not created by this employer).
     */
    Advertisement selectAdvertisement(Integer index);

    /**
     * gets handle on a role for an advertisement, specified
     * by index. Same permissions constraints apply as
     * for selectAdvertisement
     */
    Role selectRole(Integer advertisementIndex, Integer roleIndex);
    
    /**
     * coordinator only. Gets handle on Student
     * from supplied id. Returns null if student not
     * in students map
     */
    Student selectStudent(String matriculation);
	
    /**
     * coordinator only. Makes ad visible to students. Sends feedback
     * to employer by email.
     */
    void publishAdvertisement(Integer advertisementIndex, String comment);
	
    
    /**
     * student only. Sends message to coordinator (email).
     */
    void notifyAcceptedOffer(Role role, String managerName, String managerEmail);
    
    /**
     * coordinator only. Approves offer most recently accepted
     * by student with this matriculation id.
     */
    void approveAcceptedOffer(String matriculation);
	
    
    /**
     * coordinator only. Sends email to student, visitor and
     * employer manager to let them know about assignment.
     */
    void assignAcademicVisitor(String matriculation, String visitorName);
	
    /**
     * coordinator only. Records grade for visit. Email to student and emplyer.
     */
    void recordVisitAssessment(String matriculation, UoGGrade grade, String description);

    
    /** 
     * student only. Inform coordinator of independently arranged 
     * placement. Sends email to coordinator, sets up new placement
     * details in database. Coordinator must explicitly approve
     * self sourced role.
     */
    Role createNewSelfSourcedRole(
				  String title, String location, Date start, Date end, String description, Double salary);

}
