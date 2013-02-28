package uk.ac.glasgow.internman;

/**
 * Instance of a visit associated to a placement.
 * 
 * @author Team L
 *
 */
public interface Visit {

	/**
	 * Gets the visitor associated with the visit.
	 * @return the visitor associated with the visit.
	 */
	Visitor getVisitor();

	/**
	 * Gets the grade the visitor has marked the placement with.
	 * @return the grade the visitor has marked the placement with.
	 */
	UoGGrade getGrade();

	/**
	 * Gets the description of the visit.
	 * @return the description of the visit.
	 */
	String getDescription();

}
