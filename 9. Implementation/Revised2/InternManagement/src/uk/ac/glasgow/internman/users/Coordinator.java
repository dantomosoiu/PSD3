package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.users.Visitor;
import uk.ac.glasgow.internman.users.Student;
import java.util.ArrayList;

public class Coordinator extends Visitor {
	
	private ArrayList<Student> students;
	
	 protected Coordinator(String surname, String forename, String GUID,
			String password) {
		super(surname, forename, GUID, password);
		for (Student s: UserStoreImpl.getAllStudents())
			students.add(s);
	}
	 
	public ArrayList<Student> getAllStudents(){
			return students;
	}
	
	

}