package uk.ac.glasgow.clui;

/**
 * Abstract contract for specifying system commands.
 * 
 * @author tws
 * 
 * @param <Facade>
 *            the underlying system (represented by a facade interface) to which
 *            commands will be passed.
 */
@MinimumArguments(0)
public abstract class SystemCommand<Facade> {

	protected Facade facade;

	/**
	 * Constructs a new abstract system command for the specified facade.
	 * 
	 * @param facade
	 */
	public SystemCommand(Facade facade) {
		this.facade = facade;
	}

	/**
	 * Causes this command to be invoked on the facade provided at construction.
	 * Implementations of this method will format the arguments presented at the
	 * command line for invocation on the specified facade.
	 * 
	 * @param arguments
	 *            string representation of arguments to be passed to the command
	 *            at the facade.
	 * @return a message describing the result of the command.
	 * @throws SystemCommandException
	 *             if the arguments are malformed, or if the system is in an
	 *             invalid state for the specified command.
	 */
	public abstract String processCommand(String[] arguments)
			throws SystemCommandException;

	/**
	 * @return The minimum number of arguments that must be passed to this
	 *         command.
	 */
	//public abstract int getMinimumArguments();
}
