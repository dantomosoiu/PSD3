package uk.ac.glasgow.internman;
import java.util.Map;

import uk.ac.glasgow.internman.impl.Advert;
import uk.ac.glasgow.internman.impl.Placement;


/**
 * It's the AdStore. Allows storage and retrieval of interhship advertisements.
 * 
 * @author Team L
 *
 */
public interface AdStore {
	
	/**
	 * Retrieves the advert with the id specified
	 * @param advertisement id
	 * @return created advert
	 */
	Advert getAd(int id);
	
	/**
	 * Returns a Collection of all published adverts
	 * @return
	 */
	Map <Integer, Advertisement> getPublishedAds();
	
	/**
	 * Returns a Collection of all adverts
	 * @return
	 */
	Map <Integer, Advertisement> getAllAds();
	
	/**
	 * Publishes the ad with the given id
	 * @param id
	 */
	void publishAd(int id);
	
	/**
	 * Adds the given advert and returns the
	 * id given if successful. Otherwise -1 
	 */
	int addAd(Advert ad);
	
	/**
	 * Deletes the ad with the given id from the system 
	 * @param id
	 * @return
	 */
	boolean delAd(int id);
	
	/**
	 * Adds the given placement and returns the
	 * id given if successful. Otherwise -1 
	 */
	void addPlacement(Placement p);
	
	/**
	 * Returns the placement with the given id
	 * @param id
	 * @return
	 */
	Placement viewPlacement(int id);
	
	/**
	 * Deletes the placement with the given id
	 * @param id
	 */
	void delPlacement(int id);
	
	/**
	 * replaces the placement with the given id with p
	 * @param id
	 * @param p
	 */
	void editPlacement(int id, Placement p);
	
	/**
	 * replaces the advert with the given id with a
	 * @param id
	 * @param a
	 * @return
	 */
	boolean editAd(int id, Advert a);
	
}
