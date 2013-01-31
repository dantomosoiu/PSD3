package uk.ac.glasgow.internman.ui;

import java.io.InputStream;
import java.io.OutputStream;

import uk.ac.glasgow.clui.CommandLineUI;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.stub.InternManStub;

/**
 * Extends the Command Line User Interface framework for the
 * Internship Management system.
 * @author jsinger
 *
 */
public class InternManCommandLineUI extends CommandLineUI<InternMan>{

	public InternManCommandLineUI(
			InternMan facade,
			InputStream in,
			OutputStream out,
			OutputStream err) {
		
		super(facade, in, out,err);
	}
	
	/**
	 * Constructs a new command line interface tailored for commands for the Voting System facade.
	 * @param args
	 */
	public static void main(String[] args){
		
		InternMan facade = new InternManStub();
		
		CommandLineUI<InternMan> ui = new InternManCommandLineUI (
				facade,
				System.in,
				System.out,
				System.err);
			
			ui.addSystemCommand("login", new LoginCommand(facade));
			ui.addSystemCommand("getads", new GetAdsCommand(facade));
			

			new Thread(ui).start();
	}

}
