package uk.ac.glasgow.internman.users;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

/** A simple file based implementation of a store for users. */
public class UserStoreImpl implements UserStore {

	private Map<String,User> users;
	private File storeFile;
	
	/**
	 * Constructs a new store in the specified file location.
	 * @param fileName
	 */
	public UserStoreImpl(String fileName){
		storeFile = new File(fileName);
		if (storeFile.exists()){
			try {
				ObjectInputStream ois = 
					new ObjectInputStream(new FileInputStream(storeFile));
				users = (Map<String,User>)(ois.readObject());
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		else
			this.users = new HashMap<String,User>();
	}
	
	@Override
	public void addUser(String surname, String forename, String GUID, String password) {
		User user = new User(surname,forename,GUID,password);
		users.put(GUID,user);
		
		try {
			ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(storeFile));
			oos.writeObject(users);
			oos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public User getUser(String GUID, String password) {
		User user = users.get(GUID);
		if (user != null && user.authenticate(password)) return user;
		else return null;
	}

}
