package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.impl.UserFactory;

/**
 * User Factory for Student User type
 * @author Team L
 *
 */
public class StudentFactory extends UserFactory {
	
	/**
	 * Creates a new Student object
	 * @param surname Students Surname
	 * @param forename Students forename
	 * @param GUID Students GUID
	 * @param password New Students password
	 * @param matriculation Students University of Glasgow Matriculation Number
	 * @param programme Students Programme of Study
	 * @return new Student object
	 */
	protected Student createStudent(String surname, String forename, String GUID, String password, String matriculation, String programme){
		return new Student(surname,forename,GUID,password,matriculation,programme);
	}

}
