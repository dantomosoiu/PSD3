package UserFactory;

public class StudentFactory extends UserFactory {
	
	protected Student createStudent(String surname, String forename, String GUID, String password, String matriculation, String programme){
		return new Student(surname,forename,GUID,password,matriculation,programme);
	}

}
