package uk.ac.glasgow.internman;

import java.util.Map;

import uk.ac.glasgow.internman.Advertisement.AdvertisementStatus;
import uk.ac.glasgow.internman.Advertisement;

public interface AdvertStore {




	
	/**
	 * Adds new advert to the store
	 * 
	 * @param roles
	 * 		map of roles that the advert offers
	 * @param employer
	 * 		employer offering advert
	 * @param applicationDetails
	 * `	details of advert
	 * @param comments
	 * 		coord's comments on ad
	 * @param status
	 * 		status of advert
	 */
	public void addAdvert(
			int advertId,
			Map<Integer, Role> roles, 
			Employer employer,
			String applicationDetails,
			String comments,
			AdvertisementStatus status);
		
	/**
	 * Returns a advert specified by the id
	 * 
	 * @param advertId
	 *            id of advert
	 * @return the advert specified by the advertId
	 */
	public Advertisement getAdvert(int advertId);
	
	/**
	 * Returns all adverts
	 * 
	 * @return Map<Integer, Advertisement>
	 */
	public Map<Integer, Advertisement> getAdverts();
	
}
