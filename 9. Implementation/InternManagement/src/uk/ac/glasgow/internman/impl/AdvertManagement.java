package uk.ac.glasgow.internman.impl;


import java.util.HashMap;

import uk.ac.glasgow.internman.AdStore;
import uk.ac.glasgow.internman.Advertisement;




public class AdvertManagement implements AdStore {
	
	private int maxInt;
	private HashMap<Integer, Advertisement> adverts;
	private PlacementStoreImpl ps;
	
	public AdvertManagement() {
		maxInt = 0;
		adverts = new HashMap<Integer, Advertisement>();
	}
	
	public AdvertManagement(HashMap<Integer, Advertisement> ads, int s) {
		maxInt = s;
		adverts = ads;
	}
	
	
	//Retrieves the advert with the id specified
	public Advert getAd(int id) {
		return (Advert) adverts.get(id);
	}
	
	//Returns a Linked List of all published adverts
	public HashMap <Integer, Advertisement> getPublishedAds() {
		HashMap<Integer, Advertisement> ret = new HashMap<Integer, Advertisement>();
		for (Integer i : adverts.keySet()) if (adverts.get(i).getStatus() == Advert.AdvertisementStatus.PUBLISHED) ret.put(i, adverts.get(i));
		return ret;
	}
	
	//Returns a linked list of all adverts
	public HashMap <Integer, Advertisement> getAllAds() {
		return adverts;
	}
	
	//Publishes the ad with the given id
	public void publish(int id, String comment) {
		((Advert) adverts.get(id)).publish(Advert.AdvertisementStatus.PUBLISHED, comment);
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
		ps.addPlacement(p);
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

	@Override
	public void publishAd(int id) {
		((Advert) adverts.get(id)).publish(Advert.AdvertisementStatus.PUBLISHED, null);
	}
	
}
