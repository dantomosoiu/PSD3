package UserFactory;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating Visitor objects.
 */
public class VisitorFactory extends UserFactory {

	/**
	 * Creates a new Visitor object.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @return the visitor
	 */
	protected Visitor createVisitor(String surname, String forename, String GUID,String password) {
		return new Visitor(surname,forename,GUID,password);
	}
	
}
