package uk.ac.glasgow.internman.advert;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

import uk.ac.glasgow.internman.Advertisement;
import uk.ac.glasgow.internman.Advertisement.AdvertisementStatus;
import uk.ac.glasgow.internman.users.User;
import uk.ac.glasgow.internman.AdvertStore;
import uk.ac.glasgow.internman.Employer;
import uk.ac.glasgow.internman.Role;

public class AdvertStoreImpl implements AdvertStore{
	
	private Map<Integer, Advertisement> adverts;
	private File storeFile;
	
	/**
	 * Constructs instance of advert store
	 * @param fileName
	 * 		the name or path of file where the adverts are stored
	 */
	public AdvertStoreImpl(String fileName){
		storeFile = new File(fileName);
		if (storeFile.exists()){
			try {
				ObjectInputStream ois = 
					new ObjectInputStream(new FileInputStream(storeFile));
				adverts = (Map<Integer, Advertisement>)(ois.readObject());
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		else
			this.adverts = new HashMap<Integer, Advertisement>();
	}

	
	 /**
	  * takes integer mapLocation, map of roles, employer, application details,
	  * comments, and advert status
	  * Creates advert, stores in advert store.
	  */
	@Override
	public void addAdvert(int mapLocation, Map<Integer, Role> roles,
			Employer employer, String applicationDetails, String comments,
			AdvertisementStatus status) {
		
		Advertisement advert = new AdvertisementImpl(mapLocation, roles, employer, 
				applicationDetails, comments, status);
		adverts.put(mapLocation, advert);
		
		try {
				ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
				oos.writeObject(adverts);
				oos.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} 
	}

	/**
	 * returns advert at mapLocation
	 */
	@Override
	public Advertisement getAdvert(int mapLocation) {
		Advertisement advert = adverts.get(mapLocation);
			return advert;		
	}
	
	/**
	 * returns map of adverts.
	 */
	public Map<Integer, Advertisement> getAdverts(){
		return adverts;
	}

}
