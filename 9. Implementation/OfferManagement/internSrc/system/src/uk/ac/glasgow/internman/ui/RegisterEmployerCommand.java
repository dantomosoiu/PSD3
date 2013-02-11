package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.InternMan;

@MinimumArguments(2)
@CommandDescription("Adds a new employer to the system.")
@ArgumentsDescription("<name> <email address>")
public class RegisterEmployerCommand extends SystemCommand<InternMan> {

	public RegisterEmployerCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String name = args[0];
		
		String emailAddress = args[1];
		
		Employer employer = facade.registerNewEmployer(name, emailAddress );
		
		if (employer != null) 
			dialogue.sendMessage( "Added new employer ["+employer.getName()+"]." );
		
		else throw new SystemCommandException( 
				"Couldn't register new employer ["+name+"].");
	}

}
