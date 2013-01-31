package uk.ac.glasgow.clui;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
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
 * @author tws
 * 
 * @param <Facade>
 *            the underlying system to be controlled using this interface.
 */
public abstract class CommandLineUI<Facade> implements Runnable {

	private BufferedReader input;
	private PrintWriter output;
	private PrintWriter error;

	private Map<String, SystemCommand<Facade>> commands = new HashMap<String, SystemCommand<Facade>>();

	private Facade facade;

	/**
	 * Constructs a new command line user interface on top of the specified
	 * facade interface. Commands are read from the specified input stream.
	 * System messages and errors are passed to the out and err output streams
	 * respectively.
	 * 
	 * @param facade
	 * @param in
	 *            the command source. Each command is read from the stream and
	 *            assumed to be terminated by a new line.
	 * @param out
	 *            the output stream for messages from the system.
	 * @param err
	 *            the output stream for errors from the system.
	 */
	public CommandLineUI(Facade facade, InputStream in, OutputStream out,
			OutputStream err) {
		input = new BufferedReader(new InputStreamReader(in));
		output = new PrintWriter(out);
		error = new PrintWriter(err);

		this.facade = facade;
		addSystemCommand("exit", new DefaultExitCommand(facade));
		addSystemCommand("help", new DefaultHelpCommand(facade));

	}

	/**
	 * Adds a new command to the user interface.
	 * 
	 * @param commandName
	 *            the label for the command when entered on the command line.
	 * @param systemCommand
	 *            the command to invoke on receiving the specified label.
	 */
	public void addSystemCommand(String commandName,
			SystemCommand<Facade> systemCommand) {
		commands.put(commandName, systemCommand);
	}

	/**
	 * Runs the user interface. While this method is active, input is read from
	 * the specified input stream and messages are passed to the output and
	 * error streams. The CommandLineUI implements the Runnable interface, so
	 * the user interface may be run as a separate thread from the main system
	 * if necessary.
	 */
	public void run() {
		while (true) {
			try {
				String[] nextCommand = input.readLine().split(" ");

				String commandName = nextCommand[0];
				String[] arguments = Arrays.copyOfRange(nextCommand, 1,
						nextCommand.length);

				SystemCommand<Facade> command = commands.get(commandName);

				if (command == null) {
					command = new UnknownSystemCommand<Facade>(facade,
							commandName);
					commands.put(commandName, command);
				}

				try {

					int minimumArguments = getCommandMinimumArguments(command);

					if (arguments == null
							|| arguments.length < minimumArguments)
						throw new SystemCommandException(
								"Invalid number of arguments for command ["
										+ commandName + "].");

					String message = command.processCommand(arguments);

					output.println(message);
					output.flush();
				} catch (SystemCommandException e) {
					error.println(e.getMessage());
					error.flush();
				}

			} catch (IOException e) {
				e.printStackTrace(error);
			}
		}
	}

	private int getCommandMinimumArguments(SystemCommand<Facade> command) {
		MinimumArguments min = 
			command.getClass().getAnnotation(MinimumArguments.class);

		if (min == null) return 0;
		else return min.value();
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

		public DefaultExitCommand(Facade facade) {
			super(facade);
		}

		@Override
		public String processCommand(String[] arguments)
				throws SystemCommandException {
			System.exit(0);
			return "Closing...";
		}
	}
	
	@CommandDescription("Prints the help message for specified command, or this help message.")
	@ArgumentsDescription("<command>")
	private class DefaultHelpCommand extends SystemCommand<Facade>{

		public DefaultHelpCommand(Facade facade) {
			super(facade);
		}

		@Override
		public String processCommand(String[] arguments)
				throws SystemCommandException {
			
			String result = "";
			
			if (arguments != null && arguments.length > 0){
				String commandName = arguments[0];
				SystemCommand<Facade> command = commands.get(commandName);
				
				if (command != null){
					result = formatCommandHelp(commandName,command);
					return result;
				} else 
					result = "Unknown command ["+commandName+"]\n";
			}
			
			//otherwise just print the general help message.
			result += "Available commands:\n";
			
			for (Map.Entry<String,SystemCommand<Facade>> entry: commands.entrySet()){
				String commandName = entry.getKey();
				SystemCommand<Facade> command = commands.get(commandName);
				result += formatCommandHelp(commandName,command);
			}
			return result;
		}
		
		private String formatCommandHelp(String commandName, SystemCommand<Facade> command){
			return commandName+" "+getCommandArgumentsDescription(command)+
				"\n\t"+getCommandDescription(command)+"\n\n"; 	
		}
		
		private String getCommandDescription(SystemCommand<Facade> command) {
			CommandDescription desc = 
				command.getClass().getAnnotation(CommandDescription.class);

			if (desc == null) return "";
			else return desc.value();
		}
		
		private String getCommandArgumentsDescription(SystemCommand<Facade> command) {
			ArgumentsDescription desc = 
				command.getClass().getAnnotation(ArgumentsDescription.class);

			if (desc == null) return "";
			else return desc.value();
		}
	}
}
