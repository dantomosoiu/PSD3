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
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.InternMan;

@MinimumArguments(0)
@CommandDescription("Initiates a dialogue to submit a new advertisement containing internship roles.")

public class SubmitAdvertisementCommand extends SystemCommand<InternMan>{

	private String dateFormatString = "dd/mm/yyyy";
	
	private DateFormat format = new SimpleDateFormat(dateFormatString);
	
	public SubmitAdvertisementCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		Employer employer = facade.getCurrentEmployer();
		
		if (employer == null){
			dialogue.sendMessage("Current user is not an employer.");
			return;
		}

		String applicationDetails = employer.getEmailAddress();
		
		try {
			String newContactDetails = dialogue.getUserInput(
					"Amend contact details for applications ["+applicationDetails+"]?Empty line for current details.");
			
			if (!newContactDetails.equals(""))
				applicationDetails = newContactDetails;
			
			
			Advertisement advertisement = facade.createNewAdvertisement(applicationDetails);
			
			boolean addAnotherRole = true;
			
			while (addAnotherRole){
							
				String title = dialogue.getUserInput("Enter role title");
				
				String location = dialogue.getUserInput("Enter location where internships will be based.");

				Date start = format.parse(dialogue.getUserInput("Enter start date("+dateFormatString+")."));
				Date end = format.parse(dialogue.getUserInput("Enter end date("+dateFormatString+")."));
			
				String description = dialogue.getUserInput("Enter description of role.");
			
				Double salary = Double.parseDouble(dialogue.getUserInput("Enter salary (GBP/week)."));
			
				advertisement.addNewRole(title, location, start, end, description, salary);
			
				addAnotherRole = dialogue.getUserInput("Add another role (Y/N)?").equals("Y");

			}
			
			dialogue.sendMessage("New advertisement awaiting coordinator approval.");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
		    // IOException or ParseException
			e.printStackTrace();
		}
		
		

		
	}

}
