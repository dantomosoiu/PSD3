package uk.ac.glasgow.internman.ui;

import uk.ac.glasgow.clui.CommandLineUI;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.impl.InternManStub;
import uk.ac.glasgow.internman.users.UserStore;
import uk.ac.glasgow.internman.users.UserStoreImpl;

/**
 * Extends the CommandLineUI framework class to provide a command line user
 * interface for the InternMan Internship Management system. The class also
 * provides a main entry point for invoking an implementation of the InternMan
 * system.
 * 
 * @author tws
 * @author jsinger
 * 
 */
public class InternManCLUI extends CommandLineUI<InternMan> {

	public InternManCLUI(
			InternMan facade, SystemDialogue dialogue) {
		
		super(facade, dialogue);
	}

	/**
	 * Configures the command line user interface framework to pass commands to
	 * the InternMan system.
	 * 
	 * @param args - the program does not accept any optional arguments.
	 */
	public static void main(String[] args) {
		
		UserStore userStore = new UserStoreImpl("users.obj");
		userStore.addUser("Storer", "Tim", "tws", "1234");

		InternMan facade = new InternManStub(userStore);
		
		SystemDialogue dialogue = new SystemDialogue(System.in, System.out, System.err);

		InternManCLUI userInterface = new InternManCLUI(facade,dialogue);

		SystemCommand<InternMan> showAdvertisementSummary
			=  new ViewAdvertisementSummaryCommand(facade,dialogue);
		
		//userInterface.addSystemCommand(
		//		"ShowAdvertisementSummary", showAdvertisementSummary);

		userInterface.addSystemCommand(
		    "Login", new LoginCommand(facade,dialogue));

		userInterface.addSystemCommand(
		    "RegisterEmployer", new RegisterEmployerCommand(facade,dialogue));
		
		 userInterface.addSystemCommand(
		 		"SubmitAdvertisement", new SubmitAdvertisementCommand(facade,dialogue));

		 userInterface.addSystemCommand(
		 		"PublishAdvertisement", new PublishAdvertisementCommand(facade,dialogue));

		
		 userInterface.addSystemCommand(
		 		"ViewAdvertisementDetail", new ViewAdvertisementDetailCommand(facade,dialogue));

		userInterface.addSystemCommand(
		 		"ViewStudentDetail", new ViewStudentDetailCommand(facade,dialogue));
		
		 userInterface.addSystemCommand(
		 		"AcceptOffer", new AcceptOfferCommand(facade,dialogue));
		
		 userInterface.addSystemCommand(
		 		"ApproveOffer", new ApproveOfferCommand(facade,dialogue));
		
		 userInterface.addSystemCommand(
		 		"AssignVisitor", new AssignAcademicVisitorCommand(facade,dialogue));
		
		 userInterface.addSystemCommand(
		 		"RecordVisitAssessment", new RecordVisitAssessmentCommand(facade,dialogue));
		
		
		new Thread(userInterface).start();
	}

}
