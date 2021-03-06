
package uk.ac.glasgow.internman;

import java.util.ArrayList;

import uk.ac.glasgow.internman.impl.Placement;


public interface PlacementStore {
	/**
	 * returns ArrayList of all existing placements in PlacementStore
	 */
	public ArrayList<Placement> getAllPlacements();
	
	/**
	 * Returns a newly added Placement, if successful, Null otherwise.
	 * @param p
	 *            the new placement
	 */
	public Placement addPlacement(Placement p);
	

	/**
	 * Returns a removed Placement, if placement id matches, Null otherwise.
	 * @param id
	 *            the placement id
	 */
	public Placement removePlacement(int id);

	/**
	 * Returns an edited Placement, if placement exists, Null otherwise.
	 * @param p
	 *            the edited placement
	 */
	public Placement editPlacement(Placement p);

	/**
	 * Returns a Placement with the given id, if successful, Null otherwise.
	 * @param id
	 *            the placement id
	 */
	public Placement getPlacement(int id);

}
