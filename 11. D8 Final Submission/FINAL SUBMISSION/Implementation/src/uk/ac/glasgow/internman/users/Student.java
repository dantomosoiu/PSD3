package uk.ac.glasgow.internman.users;


/**
 * Student type User
 * 
 * @author Team L
 *
 */
public class Student extends User {
	private String matriculation;
	private String programme;
	
	/**
	 * Constructor for new student object
	 * @param surname Students Surname
	 * @param forename Students forename
	 * @param GUID Students GUID
	 * @param password New Students password
	 * @param matriculation Students University of Glasgow Matriculation Number
	 * @param programme Students Programme of Study
	 */
	protected Student(String surname, String forename, String GUID, String password, String matriculation, String programme){
		super(surname, forename, GUID, password);
		this.matriculation = matriculation;
		this.programme = programme;
	}

	/**
	 * Getter for Students Matriculation Number
	 * @return Students Matriculation Number
	 */
	public String getMatriculation() {
		return matriculation;
	}

	/**
	 * Getter for Students Programme of Study
	 * @return Students Programme of Study
	 */
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
