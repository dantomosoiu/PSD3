package uk.ac.glasgow.internman.test;

import static org.junit.Assert.*;

import java.io.File;
import java.text.DateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import uk.ac.glasgow.internman.AdvertStore;
import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Student;
import uk.ac.glasgow.internman.advert.AdvertStoreImpl;
import uk.ac.glasgow.internman.advert.RoleImpl;
import uk.ac.glasgow.internman.impl.InternManStub;
import uk.ac.glasgow.internman.users.*;

public class InternManTest {

	UserStore users;
	InternManStub tester;
	
	@Before
	public void setUp() throws Exception {
		
		testOutput("----- Start of test case");
		testOutput("-- Setting up");
		
		users = new UserStoreImpl("userTest");
		
		users.addStudent("Snow", "Debra",  "1008744s", "ilovebob", "teamk@gmail.com", null, Student.Programme.ESE);
		users.addStudent("Terry", "Robert", "1002196t", "debrasucks", "teamk@gmail.com", null, Student.Programme.SE);
		users.addStudent("Donaldson", "Stephen", "1003334d", "dog", "teamk@gmail.com", null, Student.Programme.CS3H);
		users.addStudent("Malone", "Eric", "1010089m", "password", "teamk@gmail.com", null, Student.Programme.CS3);
		users.addStudent("Shane", "Elane", "1002412s", "matriculation", "teamk@gmail.com", null, Student.Programme.SE);
		
		Employer employer = users.addEmployer("PG Tips", "pre-gest@tips.com", "Bond", "Brooke", "pre-gest@tips.com-emp", "iLikeTea");
		Employer employerthesecond = users.addEmployer("Tetley", "tetley@tea.com", "Edward", "Joseph", "tetley@tea.com-emp", "tealeaves");
		users.addEmployer("Twinings", "tea@leaves.com", "Twining", "Thomas", "tea@leaves.com-emp", "cuppa");
		
		users.addVisitor("Smith", "Sebastian", "seb.smi", "foo");
				
		tester = new InternManStub(users);

		Role role = new RoleImpl("title", new Date(2013, 6, 1), new Date(2013, 7, 15), (double)9001, false, "All of the places");
		Map<Integer, Role> rolemap = new Hashtable();
		rolemap.put(8, role);
		
		Role rolethesecond = new RoleImpl("titlethesecond", new Date(2013, 6, 1), new Date(2013, 7, 16), (double)9002, false, "All of the other places");
		Map<Integer, Role> rolemapthesecond = new Hashtable();
		rolemapthesecond.put(7, role);
		
		tester.adds.addAdvert(8, rolemap, employer , "Send a homing pigeon our way, first to arrive gets the placement (the pigeon that is)", "Love the pigeon idea", Advertisement.AdvertisementStatus.PUBLISHED);
		tester.adds.addAdvert(7, rolemapthesecond, employerthesecond , "Emailpls", "Kthx", Advertisement.AdvertisementStatus.PENDING);
	}
	
	private void testOutput(String text){
		boolean showOutput = true;
		if (showOutput){
			System.out.println(text);
		}
		
	}

	@After
	public void tearDown() throws Exception {
		testOutput("-- Tearing down");
		users = null;
		tester = null;
		String tempFile = "userTest";
		//Delete if tempFile exists
		File fileTemp = new File(tempFile);
		if (fileTemp.exists()){
			testOutput("Teardown deleting userStore file");
		    fileTemp.delete();
		}
		
		tempFile = "advertFile";
		//Delete if tempFile exists
		fileTemp = new File(tempFile);
		if (fileTemp.exists()){
			testOutput("Teardown deleting advertFile file");
		    fileTemp.delete();
		}
		testOutput("----- End of test case");
	}

	
	/**
	 * Tests login() with incorrect username and correct password
	 */
	@Test
	public void Utility1() {
		assertEquals(false, tester.login("1008744j", "ilovebob"));		
	}
	
	/**
	 * Tests login() with correct username and incorrect password
	 */
	@Test
	public void Utility1a() {
		assertEquals(false, tester.login("1008744s", "password?"));		
	}
	
	/**
	 * Tests login() with incorrect username and password
	 */
	@Test
	public void Utility1b() {
		assertEquals(false, tester.login("1008744j", "password"));		
	}
	
	/**
	 * Tests login() with correct username and password
	 */
	@Test
	public void Utility2() {
		assertEquals(true, tester.login("1002412s", "matriculation"));		
	}
	
	/**role
	 * Test getStudents()
	 * The facade appears to mismatch the requirements document so we are testing the getStudents() method
	 * in the facade here since it does not perform the complete viewStudentDetail use case.
	 */
	@Test
	public void viewStudentDetailTest(){
		
		boolean test = true;
		int count = 0;
		
		for (Map.Entry<String, Student> entry : users.getStudents().entrySet()){
			try{
				
				if (entry.getValue().getProgramme() == null){
					assertEquals(true, false);
				}
			} catch (Exception ee) { assertEquals(true, false); }
			
 
		}
		assertEquals(true, true);		
	}
	
	/**
	 * view advert summary test as employer
	 */
	@Test
	public void UtilityDontKnowYet() {
		tester.login("pre-gest@tips.com-emp", "iLikeTea");
		assertEquals(true, (tester.getAdvertisements().containsKey(8) && !(tester.getAdvertisements().containsKey(7))));
		}
	
	/**
	 * view advert summary test as visitor
	 */
	@Test
	public void Utitlity4() {
		tester.login("seb.smi", "foo");
		assertEquals(true, (tester.getAdvertisements().containsKey(8) && (tester.getAdvertisements().containsKey(7))));
		}
	
	/**
	 * view advert summary test as student
	 */
	@Test
	public void Advert5() {
		tester.login("1003334d", "dog");
		assertEquals(true, (tester.getAdvertisements().containsKey(8) && !(tester.getAdvertisements().containsKey(7))));
		}

	
	/**
	 * Tests registerNewEmployer method
	 * visitor logs in and registers a new employer who then tries to login
	 */
	@Test
	public void Advert4() {
		tester.login("seb.smi", "foo");
		tester.registerNewEmployer("Bettys and Taylors", "betty@taylor.com");
		assertEquals(true, tester.login("betty@taylor.com-emp", "Bettys and Taylors-pwd"));
	}

		// To be continued... sorry

}
