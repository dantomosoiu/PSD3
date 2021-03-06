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
 * @author michael
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
	 * @param userFileName
	 * @param studentFileName
	 * @param employerFileName
	 * @param visitorFileName
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
			try{
				ObjectInputStream employerIS = new ObjectInputStream(new FileInputStream(employerFile));
				employermap = (Map<String,EmployerImpl>)(employerIS.readObject()); //problem line
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
	
	public Student getStudent(String GUID, String password) {
		Student Student = studentmap.get(GUID);
		if (Student != null && Student.authenticate(password)) 
			return Student;
		else 
			return null;
	}
	
	public EmployerImpl getEmployer(String contact, String password) {
		EmployerImpl employer = employermap.get(contact);
		if (employer != null && employer.authenticate(password)) 
			return employer;
		else 
			return null;
	}
	
	public Visitor getVisitor(String GUID, String password) {
		Visitor visitor = visitormap.get(GUID);
		if (visitor != null && visitor.authenticate(password)) 
			return visitor;
		else 
			return null;
	}

	public Coordinator getCoordinator() {
		return coordinator;
	}
	
	public Map<String,Student> getStudents() {
		return studentmap;
	}
	
	public static Collection<Student> getAllStudents(){
		return studentmap.values();
	}
	
	
}
