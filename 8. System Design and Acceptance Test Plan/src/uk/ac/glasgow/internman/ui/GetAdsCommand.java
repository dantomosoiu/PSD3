package uk.ac.glasgow.internman.ui;

import java.util.Map;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;

import uk.ac.glasgow.internman.InternMan;
import uk.ac.glasgow.internman.adverts.Advertisement;

@MinimumArguments(0)
@CommandDescription("Get published advertisements.")
public class GetAdsCommand extends SystemCommand<InternMan> {

	public GetAdsCommand(InternMan facade) {
		super(facade);
	}

	@Override
	public String processCommand(String[] arguments)
			throws SystemCommandException {
		
	    Map<Integer,Advertisement>  ads = facade.getAdvertisements();
	    StringBuilder b;
	    if (ads==null)
		return "Advertisements DB not initialized";
	    else {
		b = new StringBuilder();
		for (Map.Entry<Integer, Advertisement> adEntry : ads.entrySet()) {
		    b.append((adEntry.getKey() + "/" + adEntry.getValue()));
		    b.append("\n");
		}
	    }
	    return b.toString();
	}
}
