
package PlacementStore;

import java.util.ArrayList;

public interface PlacementStoreInterface {
	/**
	 * returns ArrayList of all existing placements in PlacementStore
	 */
	ArrayList<Placement> getAllPlacements();
	
	/**
	 * Returns a newly added Placement, if successful, Null otherwise.
	 * 
	 * @param p
	 *            the new placement
	 */
	Placement addPlacement(Placement p);
	

	/**
	 * Returns a removed Placement, if placement id matches, Null otherwise.
	 * 
	 * @param id
	 *            the placement id
	 */
	Placement removePlacement(int id);

	/**
	 * Returns an edited Placement, if placement exists, Null otherwise.
	 * 
	 * @param p
	 *            the edited placement
	 */
	Placement editPlacement(Placement p);

	/**
	 * Returns a Placement with the given id, if successful, Null otherwise.
	 * 
	 * @param id
	 *            the placement id
	 */
	Placement getPlacement(int id);
}
