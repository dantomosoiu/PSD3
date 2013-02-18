package uk.ac.glasgow.clui;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;

public class SystemDialogue {

	private BufferedReader input;
	private PrintWriter output;
	private PrintWriter error;

	/**
	 * Wraps raw IO streams for interacting with a user.
	 * 
	 * @param in
	 *            user input source. Each input is read from the stream and
	 *            assumed to be terminated by a new line.
	 * @param out
	 *            the output stream for messages from the system.
	 * @param err
	 *            the output stream for errors from the system.
	 */
	public SystemDialogue(InputStream in, OutputStream out, OutputStream err) {
		
		input = new BufferedReader(new InputStreamReader(in));
		output = new PrintWriter(out);
		error = new PrintWriter(err);
		
	}
	
	public void sendMessage(String message){
		output.println(message);
		output.flush();
	}
	
	public String getUserInput(String prompt) throws IOException{
		sendMessage(prompt);
		return  input.readLine();
	}

	public void reportSystemError(SystemCommandException e) {
		error.println(e.getMessage());
		error.flush();		
	}
}
