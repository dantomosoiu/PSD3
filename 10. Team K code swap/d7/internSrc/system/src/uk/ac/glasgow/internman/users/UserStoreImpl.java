package uk.ac.glasgow.internman.users;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Student;
import uk.ac.glasgow.internman.Student.Programme;
import uk.ac.glasgow.internman.Visitor;
import uk.ac.glasgow.internman.advert.EmployerImpl;
import uk.ac.glasgow.internman.offer.StudentCon;
import uk.ac.glasgow.internman.visit.VisitorImpl;

/** A simple file based implementation of a store for users. */
public class UserStoreImpl implements UserStore {

	private Map<String,User> users;
	private File storeFile;
	
	/**
	 * Constructs a new store in the specified file location.
	 * @param fileName
	 */
	public UserStoreImpl(String fileName){
		storeFile = new File(fileName);
		if (storeFile.exists()){
			try {
				ObjectInputStream ois = 
					new ObjectInputStream(new FileInputStream(storeFile));
				users = (Map<String,User>)(ois.readObject());
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		else
			this.users = new HashMap<String,User>();
	}
	
	@Override
	public void addUser(String surname, String forename, String GUID, String password) {
		User user = new User(surname,forename,GUID,password);
		users.put(GUID,user);
		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
			oos.writeObject(users);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * Adds employer user to user store
	 * @param name
	 * 		company name
	 * @param email
	 * 		company email
	 * @param surname
	 * 		surname of company representative
	 * @param forename
	 * 		forename of company representative
	 * @param GUID
	 * 		GUID of company representative
	 * @param password
	 * 		password of company representative
	 */
	public Employer addEmployer(String name, String email, String surname, String forename, String GUID, String password) {
		EmployerImpl employer = new EmployerImpl(name, email, surname, forename, GUID, password);
		users.put(GUID, employer);
		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
			oos.writeObject(users);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return (Employer)employer;
	}
	

	/**
	 * Adds visitor to user store
	 * @param surname
	 * @param forename
	 * @param GUID
	 * @param password
	 */
	public Visitor addVisitor(String surname, String forename, String GUID, String password){
		VisitorImpl visitor = new VisitorImpl(surname, forename, GUID, password);
		users.put(GUID, visitor);
		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
			oos.writeObject(users);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return (Visitor)visitor;
		
	}

	public Student addStudent( String surname, String forename, String GUID, String password, String email,
			Internship internship, Programme programme){
		
		StudentCon student = new StudentCon(surname, forename, GUID, password, email, programme, internship);
		users.put(GUID, student);

		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
			oos.writeObject(users);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return (Student)student;
	}
	
	@Override
	public User getUser(String GUID, String password) {
		User user = users.get(GUID);
		if (user != null && user.authenticate(password)) return user;
		else return null;
	}

	@Override
	public Map<String, Student> getStudents() {
		Map<String, Student> students = new Hashtable();
		Iterator it = users.entrySet().iterator();
	    while (it.hasNext()) {
	        Map.Entry pairs = (Map.Entry)it.next();
	        if (pairs.getValue() instanceof Student) {
	        	Student student = (Student)pairs.getValue();
	        	if (student.getInternship() == null) students.put((String)pairs.getKey(), student);
	        }
	    }
	    
	    return students;
	        
	}

	@Override
	public Map<String, Employer> getEmployers() {
		Map<String, Employer> employers = new Hashtable();
		Iterator it = users.entrySet().iterator();
		while (it.hasNext()) {
	        Map.Entry pairs = (Map.Entry)it.next();
	        if (pairs.getValue() instanceof Employer) employers.put((String)pairs.getKey(), (Employer)pairs.getValue());
	    }
	    
	    return employers;
	}

	@Override
	public Map<String, Visitor> getVisitors() {
		Map<String, Visitor> visitors = new Hashtable();
		Iterator it = users.entrySet().iterator();
		while (it.hasNext()) {
	        Map.Entry pairs = (Map.Entry)it.next();
	        if (pairs.getValue() instanceof Visitor) visitors.put((String)pairs.getKey(), (Visitor)pairs.getValue());
	    }
	    
	    return visitors;
	}
	
	
	
	

}
