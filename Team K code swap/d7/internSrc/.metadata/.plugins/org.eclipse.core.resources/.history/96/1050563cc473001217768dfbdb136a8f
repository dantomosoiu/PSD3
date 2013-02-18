package uk.ac.glasgow.internman.ui;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.Role;

@MinimumArguments(0)
@CommandDescription("Shows a summary of the advertisements currently in the system," +
		" filtered as appropriate for the current user.")
public class ViewAdvertisementSummaryCommand extends SystemCommand<InternMan> {

	public ViewAdvertisementSummaryCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}
	
	private String formatDate(Date date){
		DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
		return df.format(date);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		String result = "#\tEmployer\tTitle\t\tStart\tEnd\tApproved\tLocation\tSalary";
		
		Map<Integer,Advertisement> advertisements = facade.getAdvertisements();
		
		if (advertisements != null)
		for (Integer index: advertisements.keySet()){
			Advertisement advertisement = advertisements.get(index);
			for (Role role: advertisement.getRoles().values())
				result += 
					index+"\t"+
					advertisement.getEmployer().getName()+"\t"+
					role.getTitle()+"\t"+
					formatDate(role.getStart())+"\t"+
					formatDate(role.getEnd())+"\t"+
					(role.isApproved()?"Y":"N")+"\t"+
					role.getLocation()+"\t"+
					role.getSalary()+"\n";
		}
		
		dialogue.sendMessage(result);
		
	}
}
