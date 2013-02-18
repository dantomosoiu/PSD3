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


public class AnythingTest {

	UserStore users;
	InternManStub tester;
	
	@Before
	public void setUp() throws Exception {
		
		testOutput("----- Start of test case");
		testOutput("-- Setting up");
		
		users = new UserStoreImpl("userTest");
		
		users.addStudent("Snow", "Debra",  "1008744s", "ilovebob", "teamk@gmail.com", null, Student.Programme.ESE);
		users.addEmployer("Twinings", "tea@leaves.com", "Twining", "Thomas", "tea@leaves.com-emp", "cuppa");
		
		users.addVisitor("Smith", "Sebastian", "seb.smi", "foo");
				
		tester = new InternManStub(users);
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
	
	
	@Test
	public void testAdd() {
		assertTrue(tester.login("1008744s", "ilovebob"));
		
		//tester.
	}

	
}
