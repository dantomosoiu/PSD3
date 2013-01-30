package uk.ac.glasgow.clui;

@MinimumArguments(0)
@CommandDescription("Unknown or unimplemented command.")
public class UnknownSystemCommand<Facade> extends SystemCommand<Facade> {

	private String commandName;

	public UnknownSystemCommand(Facade facade, String commandName) {
		super(facade);
		this.commandName = commandName;
	}

	//@Override
	//public int getMinimumArguments() {return 0;}

	@Override
	public String processCommand(String[] arguments)
			throws SystemCommandException {
		return "Unknown command ["+commandName+"].";
	}

}
