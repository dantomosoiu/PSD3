package uk.ac.glasgow.internman.stub;

import java.util.Date;
import java.util.Map;

import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.users.User;
import uk.ac.glasgow.internman.adverts.Advertisement;
import uk.ac.glasgow.internman.academics.Student;
import uk.ac.glasgow.internman.academics.UoGGrade;
import uk.ac.glasgow.internman.placements.Employer;
import uk.ac.glasgow.internman.placements.Role;

public class InternManStub implements InternMan {

    public boolean login(String userName, String password) {
	return true;
    }
    
    public User getCurrentUser() {
	return null;
    }
	
    public Map<Integer,Advertisement> getAdvertisements() {
	return null;
    }
	
    public Map<String,Student> getStudents() {
	return null;
    }
	
	
    public Employer registerNewEmployer(String name, String emailAddress) {
	return null;
    }
	
	
    public Advertisement createNewAdvertisement(String applicationDetails) {
	return null;
    }
			
    public Advertisement selectAdvertisement(Integer index) {
	return null;
    }

    public Role selectRole(Integer advertisementIndex, Integer roleIndex) {
	return null;
    }
	
    public Student selectStudent(String matriculation) {
	return null;
    }
	
    public void publishAdvertisement(Integer advertisementIndex, String comment) {
	return;
    }
    
    public void notifyAcceptedOffer(Role role, String managerName, String managerEmail) {
	return;
    }
	
    public void approveAcceptedOffer(String matriculation) {
	return;
    }
	
    public void assignAcademicVisitor(String matriculation, String visitorName) {
	return;
    }
	
    public void recordVisitAssessment(String matriculation, UoGGrade grade, String description) {
	return;
    }

    public Employer getCurrentEmployer() {
	return null;
    }

    public Role createNewSelfSourcedRole(
				  String title, String location, Date start, Date end, String description, Double salary) {
	return null;
    }

}
