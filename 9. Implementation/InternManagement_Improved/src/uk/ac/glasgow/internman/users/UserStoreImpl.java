package uk.ac.glasgow.internman.users;

import java.io.File;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import uk.ac.glasgow.internman.users.UserStore;
import uk.ac.glasgow.internman.impl.UserFactory;


/**
 * Implementation of UserStore interface
 * 
 * @author Team L
 *
 */
public class UserStoreImpl implements UserStore {
	/*Input files and maps for storing user categories*/
	private Map<String,User> usermap;
	private File userFile;
	
	private static Map<String,Student> studentmap;
	private File studentFile;
	
	private Map<String,EmployerImpl> employermap;
	private File employerFile;
	
	private Map<String,Visitor> visitormap;
	private File visitorFile;
	
	private Coordinator coordinator = null; //singleton
	private File coordinatorFile;
	
	/*Factories*/
	private UserFactory userfactory;
	private StudentFactory studentfactory;
	private EmployerFactory employerfactory;
	private VisitorFactory visitorfactory;
	
	
	
	/**
	 * UserStoreImpl Constructor
	 * Imports files to create a userstore object
	 * 
	 * @param userFileName File storing generic users
	 * @param studentFileName File storing Student-Type Users
	 * @param employerFileName File storing Employer-Type Users
	 * @param visitorFileName File storing Visitor-Type Users
	 */
	public UserStoreImpl(String userFileName, String studentFileName, String employerFileName, String visitorFileName){ 
		/*Assign file name*/
		this.userFile = new File(userFileName);
		this.studentFile = new File(studentFileName);
		this.employerFile = new File(employerFileName);
		this.visitorFile = new File(visitorFileName);
		
		/*Open and process files*/
		if(userFile.exists()){
			try{
				ObjectInputStream userIS = new ObjectInputStream(new FileInputStream(userFile));
				usermap = (Map<String,User>)(userIS.readObject());
				userIS.close();
			}catch(FileNotFoundException e){
				System.err.println("User file could not be found.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(IOException e){
				System.err.println("User file could not be opened.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				System.err.println(e.getMessage());
				e.printStackTrace();
			}
		}else
			this.usermap = new HashMap<String,User>();
		
		if(studentFile.exists()){
			try{
				ObjectInputStream studentIS = new ObjectInputStream(new FileInputStream(studentFile));
				studentmap = (Map<String,Student>)(studentIS.readObject());
				studentIS.close();
			}catch(FileNotFoundException e){
				System.err.println("Student file could not be found.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(IOException e){
				System.err.println("Student file could not be opened.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				System.err.println(e.getMessage());
				e.printStackTrace();
			}
		}else
			this.studentmap = new HashMap<String,Student>();
			
			
		if(employerFile.exists()){
//			try{
//				ObjectInputStream employerIS = new ObjectInputStream(new FileInputStream(employerFile));
//				employermap = (Map<String,EmployerImpl>)(employerIS.readObject()); //problem line
//				employerIS.close();
//			}catch(FileNotFoundException e){
//				System.err.println("Employer file could not be found.");
//				System.err.println(e.getMessage());
//				e.printStackTrace();
//			}catch(IOException e){
//				System.err.println("Employer file could not be opened.");
//				System.err.println(e.getMessage());
//				e.printStackTrace();
//			}catch(ClassNotFoundException e){
//				System.err.println(e.getMessage());
//				e.printStackTrace();
//			}
		}else
			this.employermap = new HashMap<String,EmployerImpl>();	
		
		if(visitorFile.exists()){
			try{
				ObjectInputStream visitorIS = new ObjectInputStream(new FileInputStream(visitorFile));
				visitormap = (Map<String,Visitor>)(visitorIS.readObject());
				visitorIS.close();
			}catch(FileNotFoundException e){
				System.err.println("Visitor file could not be found.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(IOException e){
				System.err.println("Visitor file could not be opened.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				System.err.println(e.getMessage());
				e.printStackTrace();
			}
		} else {
			
			
		}
		
		/*Initialise Factories*/
		userfactory = new UserFactory();
		studentfactory = new StudentFactory();
		employerfactory = new EmployerFactory();
		visitorfactory = new VisitorFactory();
		
	}

	/* (non-Javadoc)
	 * @see UserFactory.UserStore#addUser(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public void addUser(String surname, String forename, String GUID,String password) {
		User newUser = userfactory.createUser(surname, forename, GUID, password);
		usermap.put(GUID,newUser);
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(userFile));
			oos.writeObject(usermap);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Adds a new student type user to the store
	 * 
	 * @param surname Students Surname
	 * @param forename Students forename
	 * @param GUID Students GUID
	 * @param password New Students password
	 * @param matriculation Students University of Glasgow Matriculation Number
	 * @param programme Students Programme of Study
	 */
	public void addStudent(String surname, String forename, String GUID,String password,String matriculation,String programme){
		Student newStudent = studentfactory.createStudent(surname, forename, GUID, password, matriculation, programme);
		studentmap.put(GUID,newStudent);
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(studentFile));
			oos.writeObject(studentmap);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Adds a new Employer type user to the store
	 * 
	 * @param name Employer Name
	 * @param contact Employer contact email
	 * @param password New Employer password
	 */
	public void addEmployer(String name, String contact, String password){
		EmployerImpl newEmployer = employerfactory.createEmployer(name,contact,password);
		employermap.put(contact, newEmployer);
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(employerFile));
			oos.writeObject(employermap);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Adds a new Visitor-type user to the store
	 * 
	 * @param surname Visitor Surname
	 * @param forename Visitor Forename
	 * @param GUID Visitor GUID
	 * @param password New visitors Password
	 */
	public void addVisitor(String surname, String forename, String GUID, String password){
		Visitor newVisitor = visitorfactory.createVisitor(surname, forename, GUID, password);
		visitormap.put(GUID, newVisitor);
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(visitorFile));
			oos.writeObject(visitormap);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Adds a new visitor to the userstore
	 * 
	 * @param surname New Coordinator Surname
	 * @param forename New Coordinator Forename
	 * @param GUID New Coordinator GUID
	 * @param password New Coordinator account password
	 */
	public boolean addCoordinator(String surname, String forename, String GUID, String password){
		if(coordinator == null){
			coordinator = new Coordinator(surname,forename,GUID,password);
			return true;
		}else
			return false;
	}
	
	@Override
	public User getUser(String GUID, String password) {
		User user = usermap.get(GUID);
		if (user != null && user.authenticate(password)) 
			return user;
		else 
			return null;
	}
	
	/**
	 * Authenticates and returns a student
	 * @param GUID Students GUID
	 * @param password Students password
	 * @return If the password is correct returns the student. Else null
	 */
	public Student getStudent(String GUID, String password) {
		Student Student = studentmap.get(GUID);
		if (Student != null && Student.authenticate(password)) 
			return Student;
		else 
			return null;
	}
	
	/**
	 * Authenticates and returns an Employer
	 * 
	 * @param contact Employer contact email (username)
	 * @param password Employer password
	 * @return If the password is correct returns the Employer. Else null
	 */
	public EmployerImpl getEmployer(String contact, String password) {
		EmployerImpl employer = employermap.get(contact);
		if (employer != null && employer.authenticate(password)) 
			return employer;
		else 
			return null;
	}
	
	/**
	 * Authenticates and returns a Visitor
	 * @param GUID Visitors GUID
	 * @param password Visitors password
	 * @return If the password is correct returns the Visitor. Else null
	 */
	public Visitor getVisitor(String GUID, String password) {
		Visitor visitor = visitormap.get(GUID);
		if (visitor != null && visitor.authenticate(password)) 
			return visitor;
		else 
			return null;
	}

	/**
	 * Returns the coordinator object
	 * @return Returns the coordinator object
	 */
	public Coordinator getCoordinator() {
		return coordinator;
	}
	
	/**
	 * Returns a map of all students keyed with their GUID
	 * 
	 * @return Returns a map of all students keyed with their GUID
	 */
	public Map<String,Student> getStudents() {
		return studentmap;
	}
	
	/**
	 * 
	 * @return A collection of all students
	 */
	public static Collection<Student> getAllStudents(){
		return studentmap.values();
	}
	
	
}