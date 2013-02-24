package uk.ac.glasgow.internman.visit;

import uk.ac.glasgow.internman.UoGGrade;
import uk.ac.glasgow.internman.Visit;
import uk.ac.glasgow.internman.Visitor;

public class VisitImpl implements Visit{
	private String description;
	private UoGGrade grade;
	private VisitorImpl visitor;
	
	/**
	 * Creates instance of an academic visit
	 * @param visitor
	 * 		the visitor on this visit
	 * @param description
	 * 		description of this visit
	 * @param grade
	 * 		grade given on this visit
	 */
	public VisitImpl(VisitorImpl visitor,String description,UoGGrade grade){
		this.description = description;
		this.grade = grade;
		this.visitor = visitor;
	}
	
	@Override
	public Visitor getVisitor() {
		return visitor;
	}
	
	@Override
	public UoGGrade getGrade() {
		return grade;
	}

	@Override
	public String getDescription() {
		return description;
	}

	@Override
	public void setVisitor(VisitorImpl v) {
		this.visitor = v;
		
	}
	
}
