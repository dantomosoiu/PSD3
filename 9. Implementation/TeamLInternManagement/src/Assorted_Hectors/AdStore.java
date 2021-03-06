import java.util.Map;




public interface AdStore {
	
	//Retrieves the advert with the id specified
	Advert getAd(int id);
	
	//Returns a Collection of all published adverts
	Collection <Advert> getPublishedAds();
	
	//Returns a Collection of all adverts
	Collection <Advert> getAllAds();
	
	//Publishes the ad with the given id
	void publishAd(int id);
	
	/*Adds the given advert and returns the
	 * id given if successful. Otherwise -1 */
	int addAd(Advert ad);
	
	//Deletes the ad with the given id from the system 
	boolean delAd(int id);
	
	/*Adds the given placement and returns the
	 * id given if successful. Otherwise -1 */
	void addPlacement(Placement p);
	
	//Returns the placement with the given id
	Placement viewPlacement(int id);
	
	//Deletes the placement with the given id
	void delPlacement(int id);
	
	//replaces the placement with the given id with p
	void editPlacement(int id, Placement p);
	
	//replaces the advert with the given id with a
	boolean editAd(int id, Advert a);
	
}
