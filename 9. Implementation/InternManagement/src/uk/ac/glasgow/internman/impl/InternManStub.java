package uk.ac.glasgow.internman.impl;

import java.util.Date;
import java.util.Map;
import java.util.Set;

import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Role;
import uk.ac.glasgow.internman.Student;
import uk.ac.glasgow.internman.UoGGrade;
import uk.ac.glasgow.internman.users.User;
import uk.ac.glasgow.internman.users.UserStore;
import uk.ac.glasgow.internman.users.UserStoreImpl;

/**
 * A stub class that implements the InternMan facade without providing any
 * actual functionality (except permitting logging in and out). The class should
 * be replaced by a real implementation once development begins.
 * 
 * @author Cowboy
 * 
 */
public class InternManStub implements InternMan {

	private UserStoreImpl users; 
	private User currentUser;
	private UserFactory userfac;
	private OfferManagementImpl offerman;
	private AdvertManagement adman;
	
	public InternManStub(UserStore users){
		this.users = (UserStoreImpl) users;
	}
	
	@Override
	public boolean login(String userName, String password) {
		uk.ac.glasgow.internman.users.User user = users.getUser(userName, password);
		if (user != null){
			currentUser = user;
			return true;
		}
		else return false;
	}

	@Override
	public User getCurrentUser() {
		return currentUser;
	}

	@Override
	public Map<Integer, Advertisement> getAdvertisements() {
		return adman.getAllAds();
	}

	@Override
	public Map<String, Student> getStudents() {
		//FIX ME!
		return null;
	}

	@Override
	public Employer registerNewEmployer(String name, String emailAddress) {
		//FIX ME
		return null;
	}

	@Override
	public Advertisement createNewAdvertisement(String applicationDetails) {
		Advert a = new Advert(null, applicationDetails, null);
		adman.addAd(a);
		return a;
	}

	@Override
	public Advertisement selectAdvertisement(Integer index) {
		return adman.getAd(index);
	}

	@Override
	public Role selectRole(Integer advertisementIndex, Integer roleIndex) {
		return adman.getAd(advertisementIndex).getRoles().get(roleIndex);
	}

	@Override
	public Student selectStudent(String matriculation) {
		// FIX ME
		return (Student) users.getStudents().get(matriculation);
	}

	@Override
	public void publishAdvertisement(Integer advertisementIndex, String comment) {
		adman.publish(advertisementIndex, comment);
	}

	@Override
	public void notifyAcceptedOffer(Role role, String managerName,
			String managerEmail) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void approveAcceptedOffer(String matriculation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void assignAcademicVisitor(String matriculation, String visitorName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void recordVisitAssessment(String matriculation, UoGGrade grade,
			String description) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Employer getCurrentEmployer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role createNewSelfSourcedRole(String title, String location,
			Date start, Date end, String description, Double salary) {
		// TODO Auto-generated method stub
		return null;
	}
}
