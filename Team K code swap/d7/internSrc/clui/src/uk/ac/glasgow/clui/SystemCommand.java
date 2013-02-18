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
	protected SystemDialogue dialogue;

	/**
	 * Constructs a new abstract system command for the specified facade.
	 * 
	 * @param facade
	 */
	public SystemCommand(Facade facade, SystemDialogue dialogue) {
		this.facade = facade;
		this.dialogue = dialogue;
	}

	/**
	 * Causes this command to be invoked on the facade provided at construction.
	 * Implementations of this method will format the arguments presented at the
	 * command line for invocation on the specified facade.
	 * 
	 * @param arguments
	 *            string representation of arguments to be passed to the command
	 *            at the facade.
	 * @throws SystemCommandException
	 *             if the arguments are malformed, or if the system is in an
	 *             invalid state for the specified command.
	 */
	public abstract void processCommand(String... arguments)	throws SystemCommandException;
}
