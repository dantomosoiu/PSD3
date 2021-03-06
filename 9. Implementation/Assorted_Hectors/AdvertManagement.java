

import java.util.Map;


public class AdvertManagement implements Adstore {
	
	private int maxInt;
	private Map<Integer, Advert> adverts;
	private PlacementStore ps;
	
	public AdvertManagement() {
		maxInt = 0;
		adverts = new Map<Integer, Advert>();
	}
	
	public AdvertManagement(Map<Integer, Advert> ads, int s) {
		maxInt = s;
		adverts = ads;
	}
	
	
	//Retrieves the advert with the id specified
	public Advert getAd(int id) {
		return adverts.get(id);
	}
	
	//Returns a Linked List of all published adverts
	public Collection <Advert> getPublishedAds() {
		Collection<Advert> ret = new Collection<Advert>();
		for (Advert a : adverts.values()) if (a.getStatus == Advertisement.AdvertisementStatus.PUBLISHED) ret.add(a);
		return ret;
	}
	
	//Returns a linked list of all adverts
	public Collection <Advert> getAllAds() {
		return adverts.values();
	}
	
	//Publishes the ad with the given id
	public void publishAd(int id) {
		adverts.get(id).setStatus(Advertisement.AdvertisementStatus.PUBLISHED);
	}
	
	/*Adds the given advert and returns the
	 * id given if successful. Otherwise -1 */
	public int addAd(Advert ad) {
		maxInt+=1;
		if (adverts.put(maxInt, ad) == null) return maxInt;
		else return -1;
	}
	
	//Deletes the ad with the given id from the system 
	public boolean delAd(int id) {
		if (adverts.remove(id) != null) return true;
		else return false;
	}
	
	/*Adds the given placement and returns the
	 * id given if successful. Otherwise -1 */
	public void addPlacement(Placement p) {
		ps.addPlacemment(p);
	}
	
	//Returns the placement with the given id
	public Placement viewPlacement(int id) {
		Placement p = ps.removePlacement(id);
		ps.addPlacement(p);
		return p;
	}
	
	//Deletes the placement with the given id
	public void delPlacement(int id) {
		ps.removePlacement(id);
	}
	
	//replaces the placement with the given id with p
	public void editPlacement(int id, Placement p) {
		ps.removePlacement(id);
		ps.addPlacement(p);
	}
	
	//replaces the advert with the given id with a
	public boolean editAd(int id, Advert a) {
		if (adverts.put(id, a) != null) return true;
		else return false;
	}
	
}
