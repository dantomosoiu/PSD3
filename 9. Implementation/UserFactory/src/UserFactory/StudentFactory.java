package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating Student objects.
 */
public class StudentFactory extends UserFactory {
	
	/**
	 * Creates a new Student object.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @param matriculation the matriculation
	 * @param programme the programme
	 * @return the student
	 */
	protected Student createStudent(String surname, String forename, String GUID, String password, String matriculation, Programme programme){
		return new Student(surname,forename,GUID,password,matriculation,programme);
	}

}
