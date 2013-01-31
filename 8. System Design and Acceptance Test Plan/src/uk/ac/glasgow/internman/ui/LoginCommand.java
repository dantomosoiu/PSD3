package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.internman.InternMan;;

@MinimumArguments(2)
@CommandDescription("Login as specified user.")
@ArgumentsDescription("<guid> <password>")
public class LoginCommand extends SystemCommand<InternMan> {

	public LoginCommand(InternMan facade) {
		super(facade);
	}

	@Override
	public String processCommand(String[] arguments)
			throws SystemCommandException {
		
		String userName = arguments[0];
		String password = arguments[1];
		
		boolean result = facade.login(userName,password);
		
		if (result) return "User ["+userName+"] now the current user.";
		else return "Invalid username or password";
	}
}
