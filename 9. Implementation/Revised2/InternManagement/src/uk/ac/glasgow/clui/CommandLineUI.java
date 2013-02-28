package uk.ac.glasgow.clui;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * An abstract command line user interface providing general that can be
 * extended with customised commands to be processed for a specified system
 * facade type using the addSystemCommand() method.
 * 
 * By default all command line user interfaces support the "exit" command,
 * which, by default halts the system. This command may be over-written if
 * necessary.
 * 
 * In addition, all command line user interfaces support the "help" command,
 * which by default prints a list of available commands with their descriptions.
 * 
 * @author tws
 * 
 * @param <Facade>
 *            the underlying system to be controlled using this interface.
 */
public abstract class CommandLineUI<Facade> implements Runnable {

	private Map<String, SystemCommand<Facade>> commands = new HashMap<String, SystemCommand<Facade>>();

	private Facade facade;
	private SystemDialogue dialogue;

	/**
	 * Constructs a new command line user interface on top of the specified
	 * facade interface. Commands are read from the specified input stream.
	 * System messages and errors are passed to the out and err output streams
	 * respectively.
	 * 
	 * @param facade the interface to the underlying system.
	 * @param dialogue the low level IO component for interaction with a user
	 */
	public CommandLineUI(Facade facade, SystemDialogue dialogue) {
		this.dialogue = dialogue;
		this.facade = facade;

		addSystemCommand("exit", new DefaultExitCommand(facade, dialogue));
		addSystemCommand("help", new DefaultHelpCommand(facade, dialogue));

	}

	/**
	 * Adds a new command to the user interface.
	 * 
	 * @param commandName
	 *            the label for the command when entered on the command line.
	 * @param systemCommand
	 *            the command to invoke on receiving the specified label.
	 */
	public void addSystemCommand(String commandName, SystemCommand<Facade> command) {

		commands.put(commandName, command);
	}

	/**
	 * Runs the user interface. While this method is active, input is read from
	 * and messages and errors are passed to the user interface's dialogue. The
	 * CommandLineUI implements the Runnable interface, so the user interface
	 * may be run as a separate thread from the main system if necessary.
	 */
	public void run() {
		while (true) {
			try {
				String[] nextCommand;
				try {
					nextCommand = dialogue.getUserInput("Enter command:").split(" ");
				} catch (IOException e) {
					throw new SystemCommandException(
							"Error while reading most recent command.", e);
				}
				
				String commandName = nextCommand[0];
				String[] arguments = Arrays.copyOfRange(nextCommand, 1,
						nextCommand.length);

				SystemCommand<Facade> command = commands.get(commandName);

				if (command == null) {
					command =
							new UnknownSystemCommand<Facade>(facade, dialogue, commandName);
				}
				
				int minimumArguments = getCommandMinimumArguments(command);

				if (arguments == null || arguments.length < minimumArguments)
					throw new SystemCommandException(
							"Invalid number of arguments for command ["
									+ commandName + "].");
				
				command.processCommand(arguments);

			} catch (SystemCommandException e) {
				dialogue.reportSystemError(e);
			}
		}
	}

	private int getCommandMinimumArguments(SystemCommand<Facade> command) {
		
		MinimumArguments min =
				command.getClass().getAnnotation(MinimumArguments.class);

		if (min == null)
			return 0;
		else
			return min.value();
	}

	/**
	 * Default command for exiting the application.
	 * 
	 * @author tws
	 * 
	 */
	@MinimumArguments(0)
	@CommandDescription("Exits the system.")
	private class DefaultExitCommand extends SystemCommand<Facade> {

		public DefaultExitCommand(Facade facade, SystemDialogue dialogue) {
			super(facade, dialogue);
		}

		@Override
		public void processCommand(String... arguments) throws SystemCommandException {
			dialogue.sendMessage("Closing...");
			System.exit(0);
		}
	}

	/**
	 * Default command for generating a help message.
	 * 
	 * @author tws
	 *
	 */
	@CommandDescription("Prints the help message for specified command, or this help message.")
	@ArgumentsDescription("<command>")
	private class DefaultHelpCommand extends SystemCommand<Facade> {

		public DefaultHelpCommand(Facade facade, SystemDialogue dialogue) {
			super(facade, dialogue);
		}

		@Override
		public void processCommand(String... arguments)
				throws SystemCommandException {

			String result = "";

			if (arguments != null && arguments.length > 0) {
				String commandName = arguments[0];
				SystemCommand<Facade> command = commands.get(commandName);

				if (command != null) {
					result = formatCommandHelp(commandName, command);
					dialogue.sendMessage(result);
					return;
				} else
					result = "Unknown command [" + commandName + "]\n";
			}

			// otherwise just print the general help message.
			result += "Available commands:\n";

			for (Map.Entry<String, SystemCommand<Facade>> entry :
					commands.entrySet()) {
				
				String commandName = entry.getKey();
				SystemCommand<Facade> command = commands.get(commandName);
				result += formatCommandHelp(commandName, command);
			}
			
			dialogue.sendMessage(result);
		}

		private String formatCommandHelp(String commandName,
				SystemCommand<Facade> command) {
			return commandName + " " + getCommandArgumentsDescription(command)
					+ "\n\t" + getCommandDescription(command) + "\n\n";
		}

		private String getCommandDescription(SystemCommand<Facade> command) {
			CommandDescription desc = command.getClass().getAnnotation(
					CommandDescription.class);

			if (desc == null)
				return "";
			else
				return desc.value();
		}

		private String getCommandArgumentsDescription(
				SystemCommand<Facade> command) {
			ArgumentsDescription desc = command.getClass().getAnnotation(
					ArgumentsDescription.class);

			if (desc == null)
				return "";
			else
				return desc.value();
		}
	}
}
