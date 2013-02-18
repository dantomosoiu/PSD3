package uk.ac.glasgow.internman.ui;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Role;

@MinimumArguments(1)
@CommandDescription("Presents the detail of internship roles for a single advertisement.")
@ArgumentsDescription("<advertisementid>")
public class ViewAdvertisementDetailCommand extends SystemCommand<InternMan> {

	private String formatDate(Date date){
		DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
		return df.format(date);
	}
	
	public ViewAdvertisementDetailCommand(InternMan facade,	SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {

		Integer advertisementIndex = Integer.parseInt(args[0]);
		
		Advertisement advertisement = facade.selectAdvertisement(advertisementIndex);
		
		Employer employer = advertisement.getEmployer();
		
		String result = 
				"Employer\t\t: "+employer.getName()+"\n"+
				"Application process\t:"+advertisement.getApplicationDetails()+"\n";
		
		result += "Roles:\n";
		
		Map<Integer,Role> roles = advertisement.getRoles();
		
		for (Integer index : roles.keySet()){
			
			Role role = roles.get(index);
			
			result+=
					index+". "+role.getTitle()+"\n"+
					"Begin:\t"   + formatDate(role.getStart())+"\n"+
					"End:\t"     + formatDate(role.getEnd())+"\n"+
					"Location\t\t: "+role.getLocation()+"\n"+
					"Approved:\t"+ (role.isApproved()?"Y":"N")+"\n"+
					"Salary:\t"  + role.getSalary()+"\n";

		}
		
		result +="Coordinator's comments:\n"+advertisement.getComments();
				
		dialogue.sendMessage(result);
	}

}
