package uk.ac.glasgow.internman.ui;

import java.io.IOException;

import uk.ac.glasgow.clui.ArgumentsDescription;
import uk.ac.glasgow.clui.CommandDescription;
import uk.ac.glasgow.clui.MinimumArguments;
import uk.ac.glasgow.clui.SystemCommand;
import uk.ac.glasgow.clui.SystemCommandException;
import uk.ac.glasgow.clui.SystemDialogue;
import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Advertisement.AdvertisementStatus;
import uk.ac.glasgow.internman.InternMan;
@MinimumArguments(1)
@CommandDescription("Allows a course coordinator to release an internship advertisement to students.")
@ArgumentsDescription("<advertisementid>")
public class PublishAdvertisementCommand extends SystemCommand<InternMan>{

	public PublishAdvertisementCommand(InternMan facade, SystemDialogue dialogue) {
		super(facade, dialogue);
	}

	@Override
	public void processCommand(String... args) throws SystemCommandException {
		
		Integer advertisementIndex = Integer.parseInt(args[0]);
		
		String comment = "";
		
		try {
			comment = dialogue.getUserInput("Enter optional comments:\n");
		} catch (IOException e) {
			e.printStackTrace();
		}			
						
			facade.publishAdvertisement(advertisementIndex,comment);
			
			Advertisement advertisement = facade.getAdvertisements().get(advertisementIndex);

			if (advertisement != null &&
					advertisement.getStatus() == AdvertisementStatus.PUBLISHED)
				dialogue.sendMessage(
						"Published advertisement ["+advertisementIndex+"] for review by students.");

			else
				throw
					new SystemCommandException(
							"Couldn't publish advertisement - something went wrong.");
	}
	
}
