package uk.ac.glasgow.internman.ui;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Role;

@MinimumArguments(0)
@CommandDescription("Accepts the specified role on behalf of the currently selected user." +
		"  If no role is specified, or the role does not exist, the user must enter the details of the role.")
@ArgumentsDescription("<advertid> <roleid>")
public class AcceptOfferCommand extends SystemCommand<InternMan> {

	private String dateFormatString = "dd/mm/yyyy";
	
	private DateFormat format = new SimpleDateFormat(dateFormatString);
	
	public AcceptOfferCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		Role internshipRole = null;
		
		if (args.length > 2)
			try {
				internshipRole = createNewInternshipRole();
			} catch (Exception e) {
			    // IO or ParseException
				e.printStackTrace();
			}
		else {
			Integer advertIndex = Integer.parseInt(args[0]);
			Integer roleIndex = Integer.parseInt(args[1]);
			
			internshipRole = facade.selectRole(advertIndex,roleIndex);
							
			if (internshipRole == null)
				try {
					internshipRole = createNewInternshipRole();
				} catch (Exception e) {
				    // IOException or ParseException
					e.printStackTrace();
				}				
		}
		
		//Collect supplementary details.
		try {
			String managerName = dialogue.getUserInput("Enter manager name.");
			String managerEmail = dialogue.getUserInput("Enter manager's email address.");
			
			facade.notifyAcceptedOffer(internshipRole, managerName, managerEmail);
						
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	private Role createNewInternshipRole() throws IOException, ParseException {
				
		String title = dialogue.getUserInput("Enter role title");

		String location = dialogue.getUserInput("Enter location where internships will be based.");

		
		Date start = format.parse(dialogue.getUserInput("Enter start date("+dateFormatString+")."));
		Date end = format.parse(dialogue.getUserInput("Enter end date("+dateFormatString+")."));
	
		String description = dialogue.getUserInput("Enter description of role.");
	
		Double salary = Double.parseDouble(dialogue.getUserInput("Enter salary (GBP/week)."));
	
		return facade.createNewSelfSourcedRole(title, location, start, end, description, salary);

	}

}
