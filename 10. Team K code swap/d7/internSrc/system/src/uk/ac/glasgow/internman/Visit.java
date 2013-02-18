package uk.ac.glasgow.internman;

import uk.ac.glasgow.internman.visit.VisitorImpl;


public interface Visit {

	Visitor getVisitor();
	
	void setVisitor(VisitorImpl v);

	UoGGrade getGrade();

	String getDescription();

}
