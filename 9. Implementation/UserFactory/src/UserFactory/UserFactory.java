package UserFactory;

public class UserFactory {
	protected  User createUser(String surname,String forename, String GUID, String password){
		return new User(surname,forename,GUID, password);
	}
}
