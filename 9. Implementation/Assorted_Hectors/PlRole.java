
import java.util.Date;

public class PlRole implements Role{
	
	private String title, location, description;
	Date start, end;
	double salary;
	boolean approved;
	
	public PlRole(String t, String l, Date s, Date e, String d, double sal) {
		title = t;
		location = l;
		description = d;
		start = s;
		end = e;
		salary = sal;
		approved = false;
	}
	
	public String getTitle() {
		return title;
	}

	public Date getStart() {
		return start;
	}

	public Date getEnd() {
		return end;
	}

	public double getSalary() {
		return salary;
	}
	
	public boolean isApproved() {
		return approved;
	}
	
	public void approve() {
		approved = true;
	}

	public String getLocation(){
		return location;
	}

}
