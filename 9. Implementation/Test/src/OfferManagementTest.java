import static org.junit.Assert.*;
import org.junit.Test;

public class OfferManagementTest {
	@Test
	public void coordinatorViewStudentDetailSuccess(){
		/*Test Case OM-VS001
		 * Must be logged in as coordinator
		 * Student with matric 1230123Q must exist in the system
		 */
		Student student = internman.selectStudent("1230123Q");
		if(student == null)
			fail("Student could not be retrieved from system");
		assertTrue(true);
	}
	
	@Test
	public void studentViewStudentDetailSuccess(){
		/*Test Case OM_VS002
		 *Must be logged in as student
		 *View logged in students details
		 */
		//Not directly realisable as a unit test case
	}
	
	@Test
	public void visitorViewStudentDetailSuccess(){
		/*Test Case OM-VS003
		 *Must be logged in as Visitor
		 *Student with matric 1230123Q must exist in the system
		 *whom the visitor has the privilege to select
		 */
		Student student = internman.selectStudent("1230123Q");
		if(student == null)
			fail("Student could not be retrieved from system");
		assertTrue(true);
	}
	
	@Test
	public void visitorViewsStudentDetailForbidden(){
		/*Test Case OM-VS004
		 *Must be logged in as a visitor
		 *Student with matric 1230123Q must exist in the system
		 *whom the visitor has the privilege to select
		 */
		Student student = internman.selectStudent("1230123Q");
		if(student == null)
			assertTrue(true);
		else
			fail("Visitor gained access to forbidden student");
	}
	
	@Test
	public void notifyAcceptedOfferExisting(){
		/*Test Case OM-NA001
		 *Must be logged in as a student
		 *Role with id=r1234 and status=APPROVED must exist
		 *
		 */
		//not implementable as unit test
	}
	
	@Test
	public void notifyExceptedOfferNew(){
		/*Test Case OM-NA002
		 * Must be logged in as student
		 * Create a new self-sourced role and accept
		 * input: title="roleTitle", location="Glasgow",start="01/06/13", end="01/09/13", description="soft dev", salary=300.33
		 *
		 */
		Role role = createNewSelfSourcedRole("roleTitle","Glasgow",new Date(13,06,01),new Date(13,09,01),"soft dev",300.33 );
		if(role == null){
			fail("Role could not be created.");
		}
		//notification not implementable
		
	}
	
	@Test
	public void approveAcceptedOfferSuccess(){
		/*Test Case OM-AA001
		 *Must be logged in as coordinator
		 *Approve an accepted offer
		 *Student with matric 1234001 and an internship with status PENDING must exist
		 */
		//Not implementable
	}
	
	@Test 
	public void approveAcceptedOfferNoInternship(){
		/*Test Case OM-AA002
		 *Must be logged in as coordinator
		 *Approve an accepted offer
		 *Student with matric 1234001 and an internship with status PENDING must exist
		 */
		//Not implementable
	}
	
	
	
	
}
