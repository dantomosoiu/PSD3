package uk.ac.glasgow.internman.ui;

import java.io.IOException;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.UoGGrade;

@MinimumArguments(2)
@CommandDescription("Allows an academic visitor to record their assessment of a student's internship.")
@ArgumentsDescription("<matriculation> <grade>")
public class RecordVisitAssessmentCommand extends SystemCommand<InternMan> {

	public RecordVisitAssessmentCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String matriculation = args[0];
		
		UoGGrade grade = UoGGrade.valueOf(args[1]);
		
		String description = "";
		try {
			description = dialogue.getUserInput("Enter description of student activities.");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		facade.recordVisitAssessment(matriculation, grade, description);
	}

}
