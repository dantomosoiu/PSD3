package UserFactory;


import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

// TODO: Auto-generated Javadoc
/**
 * The Class UserStoreImplTest.
 */
public class UserStoreImplTest {

	/**
	 * Sets the up before class.
	 *
	 * @throws Exception the exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * Tear down after class.
	 *
	 * @throws Exception the exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/** The userstore. */
	UserStoreImpl userstore; 
	
	/**
	 * Sets the up.
	 *
	 * @throws Exception the exception
	 */
	@Before
	public void setUp() throws Exception {
		userstore = new UserStoreImpl("users.ser","students.ser","employers.ser","visitors.ser");
	}

	/**
	 * Adds the get user.
	 */
	@Test 
	public void addGetUser(){
		User u1 = new User("Kilian", "Michael", "1003819", "password");
		userstore.addUser("Kilian", "Michael", "1003819", "password");
		User u2 = userstore.getUser("1003819", "password");
		assertTrue(u1.equals(u2));
	}
	
	/**
	 * Adds the get student.
	 */
	@Test 
	public void addGetStudent(){
		Student s1 = new Student("Kilian", "Michael", "1003819k@student.gla.ac.uk", "password","1003819",Programme.SE);
		userstore.addStudent("Kilian", "Michael", "1003819k@student.gla.ac.uk", "password","1003819",Programme.SE);
		Student s2 = userstore.getStudent("1003819k@student.gla.ac.uk", "password");
		assertTrue(s1.equals(s2));
	}
	
	/**
	 * Adds the get employer.
	 */
	@Test 
	public void addGetEmployer(){
		Employer s1 = new Employer("BT", "bt","password");
		userstore.addEmployer("BT","bt","password");
		Employer s2 = userstore.getEmployer("bt", "password");
		assertTrue(s1.equals(s2));
	}
	
	/**
	 * Adds the get visitor.
	 */
	@Test 
	public void addGetVisitor(){
		Visitor u1 = new Visitor("Kilian", "Michael", "1003819", "password");
		userstore.addVisitor("Kilian", "Michael", "1003819", "password");
		Visitor u2 = userstore.getVisitor("1003819", "password");
		assertTrue(u1.equals(u2));
	}
	
	/**
	 * Tear down.
	 *
	 * @throws Exception the exception
	 */
	@After
	public void tearDown() throws Exception {
		userstore = null;
	}


}
