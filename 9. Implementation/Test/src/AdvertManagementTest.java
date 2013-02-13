import org.junit.Test;
import static org.junit.Assert.*;



public class AdvertManagementTest {
	InterMan interman;
	
	public void studentViewAdvertisementDetailSuccess(){
		/*Test Case AM-A001
		 * Must be logged in as a student
		 * with a suitable advert to view
		 * having index 123001.
		 */
		Advert advert = internman.selectAdvertisement(123001);
		if(advert == null){
			fail("Advert not found or permission denied.");
		}else{
			assertTrue(true);
		}
	}
	
	public void studentViewAdvertisementDetailUnnaproved(){
		/*Test Case AM-0002
		 * Must be logged in as a student
		 * with an advert which is unsuitable to view
		 * having index 123001
		 */
		Advert advert = internman.selectAdvertisement(123001);
		if(advert == null){
			assertTrue(true);
		}else
			fail("Advert supplied to which user should not have permission");
	}
	
	@Test
	public void coordinatorViewAdvertisementDetailSucces(){
		/*Test Case AM-A003
		 * Must be logged in as coordinator
		 * with an advert suitable for viewing
		 * Indexed by 123001
		 */
		
		Advert advert = internman.selectAdvertisement(123001);
		if(advert == null){
			fail("Advert not found or permission denied.");
		}else{
			assertTrue(true);
		}
	}
	
	@Test
	public void employerViewAdvertisementDetailSuccess(){
		/*Test Case AM-A004
		 * Must be logged in as an employer
		 * with an advert suitable for viewing in the system
		 * indexed by 123002
		 */
		Advert advert = internman.selectAdvertisement(123001);
		if(advert == null){
			fail("Advert not found or permission denied.");
		}else{
			assertTrue(true);
		} 
	}
	
	@Test 
	public void employerViewAdvertisementDetailForbidden(){
		/*Test Case AM-A005
		 * Must be logged in as an employer
		 * with an advert which should be forbidden for the employer to view
		 * indexed by 123002
		 */
		Advert advert = internman.selectAdvertisement(123001);
		if(advert == null){
			assertTrue(true);
		}else
			fail("Advert supplied to which user should not have permission");
	}
	
	@Test
	public void registerEmployerSuccess(){
		/*Test Case AM-RE001
		 * Must be logged in as coordinator
		 * Registers a new employer
		 * Name: AwesomeCompany
		 * email = hr@ac.com
		 */
		Employer employer = internman.registerNewEmployer("AwesomeCompany","hr@ac.com");
		if(employer == null)
			fail("Could not create employer.");
		if(employer.getName() != "AwesomeCompany" || employer.getEmailAddress() != "hr@ac.com"){
			fail("Employer created does not match employer in system");
		}
		assertTrue(true);
	}

	@Test
	public void coordinatorSubmitAdvertisementSuccess(){
		/*Test Case AM-SA001
		 *Must be logged in as coordinator
		 *Check an advert can be submitted correctly
		 *input: ="employer details, location, application, process details, role title, dates, description, salary"
		 *
		 */
		Advertisement advert = internman.createNewAdvertisement("employer details, location, application, process details, role title, dates, description, salary");
		if(advert == null)
			fail("Could not create new advert.");
		assertEquals(advert.getApplicationDetails(),"employer details, location, application, process details, role title, dates, description, salary");
	}
	
	@Test
	public void employerSubmitAdvertisementSuccess(){
		/*Test Case AM-SA002
		 * Must be logged in as employer
		 * Check an advert can be submitted correctly
		 * input= "employer details, location, application, process details, role title, dates, description, salary"
		 */
		Advertisement advert = internman.createNewAdvertisement("employer details, location, application, process details, role title, dates, description, salary");
		if(advert == null)
			fail("Could not create new advert.");
		assertEquals(advert.getApplicationDetails(),"employer details, location, application, process details, role title, dates, description, salary");
	}
	
	@Test
	public void publishAdvertisementSuccess(){
		/*Test Case AM-PA001
		 *Must be logged in as coordinator
		 *Advert must exist in PENDING state
		 *with index=123005 
		 *inputs: index = "123005",comment="comment about advert", SESP = true
		 */
		//Manual
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
