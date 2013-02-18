package uk.ac.glasgow.internman.ui;

import java.util.Map;

import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Student;

@MinimumArguments(0)
@CommandDescription("Shows a summary of the students currently in the system," +
		" filtered as appropriate for the current user.")
public class ViewStudentSummaryCommand extends SystemCommand<InternMan> {

	public ViewStudentSummaryCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}
	
	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String result = "Name\tMatriculation\tStatus\tEmail\tManager\tEmail\tVisited\n";
		
		Map<String,Student> students = facade.getStudents();
		
		if (students != null)
		for (Student student: students.values()){
						
			result += 
				student.getSurname()+", "+student.getForename()+"\t"+
				student.getMatriculation()+"\t"+
				student.getEmail()+"\t";
			
			Internship internship = student.getInternship();
			
			if (internship != null)
				result+=
					internship.getManager()+"\t"+
					internship.getManagerEmail()+"\t"+
					(internship.isVisitComplete()?"Y":"N");
			
			result += "\n";

		}
		dialogue.sendMessage(result);
	}
}
