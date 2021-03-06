package uk.ac.glasgow.internman.users;



public class Student extends User {
	private String matriculation;
	private String programme;
	
	protected Student(String surname, String forename, String GUID, String password, String matriculation, String programme){
		super(surname, forename, GUID, password);
		this.matriculation = matriculation;
		this.programme = programme;
	}

	public String getMatriculation() {
		return matriculation;
	}

	public String getProgramme() {
		return programme;
	}

	@Override
	public boolean equals(Object o){
		if(o instanceof Student){
			Student s = (Student) o;
			if(super.equals(s) && this.matriculation.equals(s.matriculation) && this.programme.equals(s.programme));
				return true;
		}
		return false;
	}
}
