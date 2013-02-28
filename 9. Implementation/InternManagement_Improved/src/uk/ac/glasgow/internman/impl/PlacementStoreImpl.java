package uk.ac.glasgow.internman.impl;



import uk.ac.glasgow.internman.users.Student;
import java.util.ArrayList;
import uk.ac.glasgow.internman.impl.Placement;
import uk.ac.glasgow.internman.PlacementStore;


public class PlacementStoreImpl implements PlacementStore{
	
	private static ArrayList<Placement> placements;
	
	/**
	 * Constructor for PlacementStoreImpl.
	 */
	public PlacementStoreImpl(){
		placements = new ArrayList<Placement>();
	}

	@Override
	public ArrayList<Placement> getAllPlacements() {
		return placements;
	}

	@Override
	public Placement addPlacement(Placement p) {
		for (Placement placement: placements){
			String m = placement.getStudent().getMatriculation();
			String pm = p.getStudent().getMatriculation();
			if (placement.getID() == p.getID() || m.equals(pm))
				return null;
		}
		return p;
	}

	@Override
	public Placement removePlacement(int id) {
		int i = 0;
		for (Placement p: placements){
			if (p.getID() == id){
				Placement r = placements.remove(i);
				return r;
			}
			i++;
		}
		return null;
	}

	@Override
	public Placement editPlacement(Placement p) {
		int i = 0;
		for (Placement placement: placements){
			if (placement.getID() == p.getID()){
				placements.remove(i);
				placements.add(p);
				return p;
			}
			i++;
		}
		return null;
	}

	@Override
	public Placement getPlacement(int id) {
		for (Placement placement: placements){
			if (placement.getID() == id){
				return placement;
			}
		}
		return null;
	}
	
	/**
	 * Gets an instance of the placement associated with the provided student.
	 * @param s The student for which to retrieve the placement.
	 * @return an instance of the placement associated with 
	 * the provided student or null if it could not be found.
	 */
	public static Placement getPlacementByStudent(Student s){
		for (Placement p: placements){
			if (p.getStudent().getMatriculation().equals(s.getMatriculation())){
				return p;
			}
		}
		return null;
	}
	
	
	public int getSize(){
		return placements.size();
	}

}
