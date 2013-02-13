package tests;

import uk.ac.glasgow.internman.*;
import junit.framework.Assert;
import java.util.Map;
import org.junit.*;

public class Utility {

	InternMan interman;

	@Test
	public void studentLoginSuccess() {
		/*
		 * Test Case U-L001 
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB contains
		 * student credentials for username "1100123D" and password "pa$$word"
		 */

		Assert.assertTrue(interman.getCurrentUser() != null);
	}

	@Test
	public void studentLoginWrongPass() {
		/*
		 * Test Case U-L002 
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB contains
		 * student credentials for username "1100123D" and password "pa$$word"
		 */

		Assert.assertFalse(interman.login("1100123D", "iforgotit"));

		Assert.assertTrue(interman.getCurrentUser() == null);
	}

	@Test
	public void studentLoginWrongUsername() {
		/*
		 * Test Case U-L003
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB does not
		 * contain credentials for username "1100123D"
		 */

		Assert.assertFalse(interman.login("1100123D", "pa$$word"));

		Assert.assertTrue(interman.getCurrentUser() == null);
	}

	@Test
	public void studentLoginDatabaseUnreachable() {
		/*
		 * Test Case U-L004 
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup unreachable;
		 */

		Assert.assertFalse(interman.login("1100123D", "pa$$word"));

		Assert.assertTrue(interman.getCurrentUser() == null);
	}

	@Test
	public void visitorLoginSuccess() {
		/*
		 * Test Case U-L005
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB contains
		 * visitor credentials for username "Visitor01" and password
		 * "iliketovisitvisit"
		 */

		Assert.assertTrue(interman.login("Visitor01", "iliketovisitvisit"));

		Assert.assertTrue(interman.getCurrentUser() != null);
	}

	@Test
	public void visitorLoginSuccessWrongUsername() {
		/*
		 * Test Case U-L006 
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB does not
		 * contain credentials for username "Visitor01"
		 */

		Assert.assertFalse(interman.login("Visitor01", "iliketovisitvisit"));

		Assert.assertTrue(interman.getCurrentUser() == null);
	}

	@Test
	public void employerLoginSuccess() {
		/*
		 * Test Case U-L007 
		 * connection to users.db is setup and active; users.db
		 * contains employer credentials for username "Google" and password
		 * "ilikelongpasswordsandthisisnoexception"
		 */

		Assert.assertTrue(interman.login("Google",
				"ilikelongpasswordsandthisisnoexception"));

		Assert.assertTrue(interman.getCurrentEmployer() != null);
	}

	@Test
	public void employerLoginWrongPassword() {
		/*
		 * Test Case U-L008 
		 * connection to users.db is setup and active; users.db
		 * contains employer credentials for username "Google" and password
		 * "ilikelongpasswordsandthisisnoexception"
		 */

		Assert.assertTrue(interman.login("Google", "thisisntmypassword"));

		Assert.assertTrue(interman.getCurrentEmployer() == null);
	}

	@Test
	public void employerLoginWrongUsername() {
		/*
		 * Test Case U-L009 
		 * connection to users.db is setup and active; users.db
		 * does not contain credentials for username "Google"
		 */

		Assert.assertFalse(interman.login("Google", "thisisntmypassword"));

		Assert.assertTrue(interman.getCurrentEmployer() == null);
	}

	@Test
	public void employerLoginDatabaseUnreachable() {
		/*
		 * Test Case U-L010 
		 * connection to users.db is setup but host is unreachable;
		 */

		Assert.assertFalse(interman.login("Google", "thisisntmypassword"));

		Assert.assertTrue(interman.getCurrentEmployer() == null);
	}

	@Test
	public void coordinatorLoginSuccess() {
		/*
		 * Test Case U-L012 
		 * connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; 
		 * DB contains coordinator credentials for username "Coordinator01" and password "ilikevisitsandotherstuff"
		 */

		Assert.assertTrue(interman.login("Coordinator01",
				"ilikevisitsandotherstuff"));

		Assert.assertTrue(interman.getCurrentUser() != null);
	}

	@Test
	public void coordinatorLoginWrongUsername() {
		/*
		 * Test Case U-L013 connection to users.db is setup and active;
		 * connection to MyCampus credentials DB setup and active; DB does not
		 * contain credentials for username Coordinator01
		 */

		Assert.assertFalse(interman.login("Coordinator01",
				"ihopeihaveanaccount"));

		Assert.assertTrue(interman.getCurrentUser() == null);
	}

	@Test
	public void studentAdvertismentListingSuccess() {
		/*
		 * Test Case A-001 
		 * connection to advertisments.db is setup and active;
		 * DB contains one or more published advertisements
		 */

		this.studentLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() > 0);
	}

	@Test
	public void studentAdvertismentListingDatabaseUnreachable() {
		/*
		 * Test Case A-002 
		 * connection to advertisments.db is setup but host is
		 * unreachable;
		 */

		this.studentLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() == 0);
	}

	@Test
	public void employerAdvertismentListingSuccess() {
		/*
		 * Test Case A-003 
		 * connection to advertisments.db is setup and active;
		 * DB contains one or more advertisements published by the current
		 * employer
		 */

		this.employerLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() > 0);
	}
	
	@Test
	public void employerAdvertismentListingDatabaseUnreachable() {
		/*
		 * Test Case A-004
		 * connection to advertisments.db is setup but host is unreachable;
		 */

		this.employerLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() == 0);
	}
	
	@Test
	public void coordinatorAdvertismentListingSuccess() {
		/*
		 * Test Case A-005
		 * connection to advertisments.db is setup and active;
		 * DB contains one or more advertisements
		 */

		this.coordinatorLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() > 0);
	}
	
	@Test
	public void coordinatorAdvertismentListingDatabaseUnreachable() {
		/*
		 * Test Case A-006
		 * connection to advertisments.db is setup but host is unreachable;
		 */

		this.coordinatorLoginSuccess();

		Map<Integer, Advertisement> results = interman.getAdvertisements();

		Assert.assertTrue(results.size() == 0);
	}
	
}
