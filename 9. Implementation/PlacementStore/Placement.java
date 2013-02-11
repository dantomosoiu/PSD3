package PlacementStore;

public class Placement {
	
	private int id;
	private Role role;
	private String manager;
	private String contact;
	private Student student;
	private Status status;
	
	public Placement(int id, Role role, Student stu, String manager, String contact, Status status){
		this.id = id;
		this.role = role;
		this.student = stu;
		this.manager = manager;
		this.contact = contact;
		this.status = status;
	}
	
	public int getID(){
		return this.id;
	}
	
	public Role getRole(){
		return this.role;
	}
	
	public Student getStudent(){
		return this.student;
	}
	
	public String getManager(){
		return this.manager;
	}
	
	public String getContact(){
		return this.contact;
	}
	
	public Status getStatus(){
		return this.status;
	}
	
	public void setRole(Role r){
		this.role = r;
	}
	
	public void setStudent(Student s){
		this.student = s;
	}
	
	public void setManager(String m){
		this.manager = m;
	}
	
	public void setContact(String c){
		this.contact = c;
	}
	
	public void setStatus(Status s){
		this.status = s;
	}
}











