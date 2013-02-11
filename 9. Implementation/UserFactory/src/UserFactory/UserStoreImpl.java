package UserFactory;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

// TODO: Auto-generated Javadoc
/**
 * The Class UserStoreImpl.
 *
 * @author michael
 */
public class UserStoreImpl implements UserStore {
	/*Input files and maps for storing user categories*/
	/** The usermap. */
	private Map<String,User> usermap;
	
	/** The user file. */
	private File userFile;
	
	/** The studentmap. */
	private Map<String,Student> studentmap;
	
	/** The student file. */
	private File studentFile;
	
	/** The employermap. */
	private Map<String,Employer> employermap;
	
	/** The employer file. */
	private File employerFile;
	
	/** The visitormap. */
	private Map<String,Visitor> visitormap;
	
	/** The visitor file. */
	private File visitorFile;
	
	/** The coordinator. */
	private Coordinator coordinator = null; //singleton
	
	/** The coordinator file. */
	private File coordinatorFile;
	
	/*Factories*/
	/** The userfactory. */
	private UserFactory userfactory;
	
	/** The studentfactory. */
	private StudentFactory studentfactory;
	
	/** The employerfactory. */
	private EmployerFactory employerfactory;
	
	/** The visitorfactory. */
	private VisitorFactory visitorfactory;
	
	
	
	/**
	 * Instantiates a new user store impl.
	 *
	 * @param userFileName the user file name
	 * @param studentFileName the student file name
	 * @param employerFileName the employer file name
	 * @param visitorFileName the visitor file name
	 */
	public UserStoreImpl(String userFileName, String studentFileName, String employerFileName, String visitorFileName){ 
		/*Assign file name*/
		this.userFile = new File(userFileName);
		this.studentFile = new File(studentFileName);
		this.employerFile = new File(employerFileName);
		this.visitorFile = new File(visitorFileName);
		this.coordinatorFile = new File("coordinator.ser");
		
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
			try{
				ObjectInputStream employerIS = new ObjectInputStream(new FileInputStream(employerFile));
				employermap = (Map<String,Employer>)(employerIS.readObject()); //problem line
				employerIS.close();
			}catch(FileNotFoundException e){
				System.err.println("Employer file could not be found.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(IOException e){
				System.err.println("Employer file could not be opened.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				System.err.println(e.getMessage());
				e.printStackTrace();
			}
		}else
			this.employermap = new HashMap<String,Employer>();	
		
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
		}
		
		if(coordinatorFile.exists()){
			try{
				ObjectInputStream coordIS = new ObjectInputStream(new FileInputStream(coordinatorFile));
				coordinator= (Coordinator) (coordIS.readObject());
				coordIS.close();
			}catch(FileNotFoundException e){
				System.err.println("Coordinator file could not be found.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(IOException e){
				System.err.println("Coordinator file could not be opened.");
				System.err.println(e.getMessage());
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				System.err.println(e.getMessage());
				e.printStackTrace();
			}
		}else
			this.coordinator = new Coordinator("","","","");
		
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
	 * Adds the student.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @param matriculation the matriculation
	 * @param programme the programme
	 */
	public void addStudent(String surname, String forename, String GUID,String password,String matriculation,Programme programme){
		Student newStudent = studentfactory.createStudent(surname, forename, GUID, password, matriculation, programme);
		studentmap.put(matriculation,newStudent);
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
	 * Adds the employer.
	 *
	 * @param name the name
	 * @param contact the contact
	 * @param password the password
	 */
	public void addEmployer(String name, String contact, String password){
		Employer newEmployer = employerfactory.createEmployer(name,contact,password);
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
	 * Adds the visitor.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
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
	 * Adds the coordinator.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @return true, if successful
	 */
	public boolean addCoordinator(String surname, String forename, String GUID, String password){
		if(coordinator == null){
			coordinator = new Coordinator(surname,forename,GUID,password);
			try {
				ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(coordinatorFile));
				oos.writeObject(coordinator);
				oos.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return true;
		}else
			return false;
	}
	
	/* (non-Javadoc)
	 * @see UserFactory.UserStore#getUser(java.lang.String, java.lang.String)
	 */
	@Override
	public User getUser(String GUID, String password) {
		User user = usermap.get(GUID);
		if (user != null && user.authenticate(password)) 
			return user;
		else 
			return null;
	}
	
	/**
	 * Gets the student.
	 *
	 * @param GUID the guid
	 * @param password the password
	 * @return the student
	 */
	public Student getStudent(String GUID, String password) {
		Student student = studentmap.get(GUID);
		if (student != null && student.authenticate(password)) 
			return student;
		else 
			return null;
	}
	
	/**
	 * Gets the employer.
	 *
	 * @param contact the contact
	 * @param password the password
	 * @return the employer
	 */
	public Employer getEmployer(String contact, String password) {
		Employer employer = employermap.get(contact);
		if (employer != null && employer.authenticate(password)) 
			return employer;
		else 
			return null;
	}
	
	/**
	 * Gets the visitor.
	 *
	 * @param GUID the guid
	 * @param password the password
	 * @return the visitor
	 */
	public Visitor getVisitor(String GUID, String password) {
		Visitor visitor = visitormap.get(GUID);
		if (visitor != null && visitor.authenticate(password)) 
			return visitor;
		else 
			return null;
	}

	/**
	 * Gets the student.
	 *
	 * @param matriculation the matriculation
	 * @return the student
	 */
	public Student getStudent(String matriculation){
		return studentmap.get(matriculation);
	}
	
	/**
	 * Gets the coordinator.
	 *
	 * @return the coordinator
	 */
	public Coordinator getCoordinator() {
		return coordinator;
	}

	/**
	 * Gets the usermap.
	 *
	 * @return the usermap
	 */
	public Map<String, User> getUsermap() {
		return usermap;
	}

	/**
	 * Gets the studentmap.
	 *
	 * @return the studentmap
	 */
	public Map<String, Student> getStudentmap() {
		return studentmap;
	}

	/**
	 * Gets the employermap.
	 *
	 * @return the employermap
	 */
	public Map<String, Employer> getEmployermap() {
		return employermap;
	}

	/**
	 * Gets the visitormap.
	 *
	 * @return the visitormap
	 */
	public Map<String, Visitor> getVisitormap() {
		return visitormap;
	}
	
	
	
}
