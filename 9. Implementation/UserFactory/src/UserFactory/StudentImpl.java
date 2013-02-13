package UserFactory;
import uk.ac.glasgow.internman.*;

// TODO: Auto-generated Javadoc
/**
 * The Class Student.
 */
public class StudentImpl extends User implements Student {
	
	/** The matriculation. */
	private String matriculation;
	
	/** The internship. */
	private Internship internship;
	
	/** The programme. */
	private Programme programme;
	
	/**
	 * Instantiates a new student.
	 *
	 * @param surname the surname
	 * @param forename the forename
	 * @param GUID the guid
	 * @param password the password
	 * @param matriculation the matriculation
	 * @param programme the programme
	 */
	protected StudentImpl(String surname, String forename, String GUID, String password, String matriculation, Programme programme){
		super(surname, forename, GUID, password);
		this.matriculation = matriculation;
		this.programme = programme;
	}

	
	/**
	 * Gets the matriculation.
	 *
	 * @return the matriculation
	 */
	public String getMatriculation() {
		return matriculation;
	}

	/**
	 * Gets the programme.
	 *
	 * @return the programme
	 */
	public Programme getProgramme() {
		return programme;
	}

	
	/**
	 * Gets the internship.
	 *
	 * @return the internship
	 */
	public Internship getInternship() {
		return internship;
	}

	/**
	 * Sets the internship.
	 *
	 * @param internship the new internship
	 */
	public void setInternship(Internship internship) {
		this.internship = internship;
	}

	/* (non-Javadoc)
	 * @see UserFactory.User#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object o){
		if(o instanceof StudentImpl){
			StudentImpl s = (StudentImpl) o;
			if(super.equals(s) && this.matriculation.equals(s.matriculation) && this.programme.equals(s.programme));
				return true;
		}
		return false;
	}


	@Override
	public String getEmail() {
		return this.getGUID();
	}
}
