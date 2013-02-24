package uk.ac.glasgow.internman.users;

import java.util.Map;

import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Student;
import uk.ac.glasgow.internman.Student.Programme;
import uk.ac.glasgow.internman.Visitor;

public interface UserStore {
	
	/**
	 * Adds a new user to the store.
	 * @param surname
	 * @param GUID
	 * @param forename
	 * @param password
	 */
	public void addUser(
			String surname, 
			String forename,
			String GUID, 
			String password);
		
	/**
	 * Returns a user specified by the GUID, if authentication is
	 * successful.
	 * 
	 * @param GUID
	 *            the user's GUID
	 * @param password
	 *            the user's password
	 * @return the user specified by the GUID, if the password
	 * matches that of
	 *         the user.
	 */
	public User getUser(String GUID, String password);
	
	public Employer addEmployer(String name, String email, String surname, String forename, String GUID, String password);
	
	public Visitor addVisitor(String surname, String forename, String GUID, String password);
	
	public Student addStudent( String surname, String forename, String GUID, String password, String email,
			Internship internship, Programme programme);
	
	public Map<String, Student> getStudents();
	public Map<String, Employer> getEmployers();
	public Map<String, Visitor> getVisitors();
	
}
