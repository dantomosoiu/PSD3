package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;

@MinimumArguments(2)
@CommandDescription("")
@ArgumentsDescription("")
public class LoginCommand extends SystemCommand<InternMan> {

        public LoginCommand(InternMan facade, SystemDialogue dialogue) {
  	    super(facade, dialogue);
        }

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String userName = args[0];
		String password = args[1];
		
		boolean result = facade.login(userName,password);
		
		if (result) dialogue.sendMessage("User ["+userName+"] now the current user.");
		else dialogue.sendMessage("Invalid username or password");
	}
}
