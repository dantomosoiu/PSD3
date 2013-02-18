package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;

@MinimumArguments(1)
@CommandDescription("")
@ArgumentsDescription("")

public class AssignAcademicVisitorCommand extends SystemCommand<InternMan>{

	public AssignAcademicVisitorCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		String matriculation = args[0];
		String visitorName = args[1];
		
		facade.assignAcademicVisitor(matriculation,visitorName);
		
	}

}
