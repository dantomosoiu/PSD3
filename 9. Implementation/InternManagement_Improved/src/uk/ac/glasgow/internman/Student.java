package uk.ac.glasgow.internman;

import uk.ac.glasgow.internman.Internship;

/**
 * Instance of a student.
 * @author Team L
 */
public interface Student {
	
	/**
	 * Enum holding the possible programmes in which a student can be enrolled in.
	 */
	public enum Programme {
		ESE,SE,CS3H,CS3
	}

	/**
	 * Gets the Internship instance associated with the student.
	 * @return the Internship instance associated with the student.
	 */
	Internship getInternship();

	/**
	 * Gets the surname of the student.
	 * @return the surname of the student.
	 */
	String getSurname();

	/**
	 * Gets the matric number of the student.
	 * @return the matric number of the student.
	 */
	String getMatriculation();

	/**
	 * Gets the forename of the student.
	 * @return the forename of the student.
	 */
	String getForename();

	/**
	 * Gets the email of the student.
	 * @return the email of the student.
	 */
	String getEmail();

	/**
	 * Gets the programme in which the student is enrolled.
	 * @return an instance of the programme in which the student is enrolled.
	 */
	Programme getProgramme();
}
