package uk.ac.glasgow.internman.impl;


import java.util.HashMap;

import uk.ac.glasgow.internman.AdStore;
import uk.ac.glasgow.internman.Advertisement;




public class AdvertManagement implements AdStore {
	
	private int maxInt;
	private HashMap<Integer, Advertisement> adverts;
	private PlacementStoreImpl ps;
	
	/**
	 * Constructor for the AdvertManagement.
	 */
	public AdvertManagement() {
		maxInt = 0;
		adverts = new HashMap<Integer, Advertisement>();
	}
	
	/**
	 * Constructor for the AdvertManagement.
	 * @param ads the list of advertisements to add to the newly created AdvertManagement instance.
	 * @param s the maximum number of adverts.
	 */
	public AdvertManagement(HashMap<Integer, Advertisement> ads, int s) {
		maxInt = s;
		adverts = ads;
	}
	
	public Advert getAd(int id) {
		return (Advert) adverts.get(id);
	}
	
	public HashMap <Integer, Advertisement> getPublishedAds() {
		HashMap<Integer, Advertisement> ret = new HashMap<Integer, Advertisement>();
		for (Integer i : adverts.keySet()) if (adverts.get(i).getStatus() == Advert.AdvertisementStatus.PUBLISHED) ret.put(i, adverts.get(i));
		return ret;
	}
	
	public HashMap <Integer, Advertisement> getAllAds() {
		return adverts;
	}
	
	/**
	 * Publishes the ad with the given id.
	 * @param id Id of the ad to publish
	 * @param comment the comment with which to publish the ad.
	 */
	public void publish(int id, String comment) {
		((Advert) adverts.get(id)).publish(Advert.AdvertisementStatus.PUBLISHED, comment);
	}
	
	public int addAd(Advert ad) {
		maxInt+=1;
		if (adverts.put(maxInt, ad) == null) return maxInt;
		else return -1;
	}
	
	public boolean delAd(int id) {
		if (adverts.remove(id) != null) return true;
		else return false;
	}
	
	public void addPlacement(Placement p) {
		ps.addPlacement(p);
	}
	
	public Placement viewPlacement(int id) {
		Placement p = ps.removePlacement(id);
		ps.addPlacement(p);
		return p;
	}
	
	public void delPlacement(int id) {
		ps.removePlacement(id);
	}
	
	public void editPlacement(int id, Placement p) {
		ps.removePlacement(id);
		ps.addPlacement(p);
	}
	
	public boolean editAd(int id, Advert a) {
		if (adverts.put(id, a) != null) return true;
		else return false;
	}

	@Override
	public void publishAd(int id) {
		((Advert) adverts.get(id)).publish(Advert.AdvertisementStatus.PUBLISHED, null);
	}
	
}
