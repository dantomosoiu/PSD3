
package uk.ac.glasgow.internman.users;

import uk.ac.glasgow.internman.impl.PlacementStoreImpl;
import uk.ac.glasgow.internman.impl.Placement;
import uk.ac.glasgow.internman.users.Student;
import java.util.ArrayList;
import uk.ac.glasgow.internman.UoGGrade;
import uk.ac.glasgow.internman.impl.RoleImpl;

public class Visitor extends User {
	
	private ArrayList<Student> studentsUnderCustody;

	protected Visitor(String surname, String forename, String GUID, String password) {
		super(surname, forename, GUID, password);
	}
	
	public ArrayList<Student> getStudentsUnderCustody(){
		return studentsUnderCustody;
	}
	
	public void assignPlacementGrade(Student stu, UoGGrade grade, RoleImpl r){
		Placement p = PlacementStoreImpl.getPlacementByStudent(stu);
		for (RoleImpl role: p.getRole()){
			if (r.equals(role))
				r.setGrade(grade);
		}
	}
	
	public Student addStudentsUnderCustody(Student stu){
		for (Student student: studentsUnderCustody)
			if (student.equals(stu))
				return null;
		studentsUnderCustody.add(stu);
		return stu;
	}
	
}
