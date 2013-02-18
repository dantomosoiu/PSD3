package uk.ac.glasgow.clui;

@MinimumArguments(0)
@CommandDescription("Unknown or unimplemented command.")
public class UnknownSystemCommand<Facade> extends SystemCommand<Facade> {

	private String commandName;

	public UnknownSystemCommand(Facade facade, SystemDialogue dialogue, String commandName) {
		super(facade, dialogue);
		this.commandName = commandName;
	}

	@Override
	public void processCommand(String... arguments)
			throws SystemCommandException {
		dialogue.sendMessage( "Unknown command ["+commandName+"].");
	}

}
