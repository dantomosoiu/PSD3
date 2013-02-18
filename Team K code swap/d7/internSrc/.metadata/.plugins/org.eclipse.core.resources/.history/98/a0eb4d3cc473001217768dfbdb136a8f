package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Internship;
import uk.ac.glasgow.internman.Internship.InternshipStatus;
import uk.ac.glasgow.internman.Student;

@MinimumArguments(1)
@CommandDescription("")
@ArgumentsDescription("")
public class ApproveOfferCommand extends SystemCommand<InternMan>{

	public ApproveOfferCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String matriculation = args[0];
				
		facade.approveAcceptedOffer(matriculation);
		
		Student student = facade.selectStudent(matriculation);
		
		if (student != null){
			Internship internship = student.getInternship();
			
			if (internship != null &&
				internship.getStatus().equals(InternshipStatus.APPROVED))
					dialogue.sendMessage("Student ["+matriculation+"]'s internship was approved.");
			else 
				dialogue.sendMessage("Couldn't approve internship for student ["+matriculation+"].");
		} else 
			dialogue.sendMessage("Couldn't find student ["+matriculation+"].");						
	}
	
}
