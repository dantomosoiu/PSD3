package uk.ac.glasgow.internman.impl;

import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Calendar;
import java.util.Date;
import uk.ac.glasgow.internman.impl.RoleImpl;
import uk.ac.glasgow.internman.users.Status;
import uk.ac.glasgow.internman.users.Student;

public class Placement {
	
	private int id;
	private ArrayList<RoleImpl> roles;
	private String manager;
	private String contact;
	private Student student;
	private boolean approved;
	
	public Placement(int id, RoleImpl role, Student stu, String manager, String contact){
		this.id = id;
		this.roles = new ArrayList<RoleImpl>();
		this.addPlacement(role);
		this.student = stu;
		this.manager = manager;
		this.contact = contact;
		this.approved = false;
	}
	
	/*newly added methods*/
	
	public boolean isApproved(){
		return this.approved;
	}
	
	private Calendar getCalendar(Date date) {
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(date);
	    return cal;
	}
	
	private int getYearDiff(Date first, Date last){
		Calendar a = getCalendar(first);
	    Calendar b = getCalendar(last);
	    int diff = b.get(b.YEAR) - a.get(a.YEAR);
	    if (a.get(a.MONTH) > b.get(b.MONTH) || 
	        (a.get(a.MONTH) == b.get(b.MONTH) && a.get(a.DATE) > b.get(b.DATE))) {
	        diff--;
	    }
	    return diff;
	}
	
	private void checkApproval(){
		Calendar c;
		GregorianCalendar dateBefore, dateAfter;
		double monthsBetween = 0;
		for (RoleImpl r: this.roles){
			if (r.getStatus() == Status.APPROVED){
				if (getYearDiff(r.getStart(), r.getEnd())*12.0 > 3.0){
					this.approved = true;
					return ;
				}
				c = getCalendar(r.getStart());
				dateBefore = new GregorianCalendar(c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DATE));
				c = getCalendar(r.getEnd());
				dateAfter = new GregorianCalendar(c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DATE));
				
				monthsBetween += dateAfter.get(GregorianCalendar.MONTH)-dateBefore.get(GregorianCalendar.MONTH);
				if(dateAfter.get(Calendar.DAY_OF_MONTH)!=dateAfter.getActualMaximum(Calendar.DAY_OF_MONTH)
		                && dateAfter.get(Calendar.DAY_OF_MONTH)!=dateAfter.getActualMaximum(Calendar.DAY_OF_MONTH) ){
		            monthsBetween += ((dateAfter.get(Calendar.DAY_OF_MONTH)-dateBefore.get(Calendar.DAY_OF_MONTH))/31d);
		        }
				if (monthsBetween > 3.0){
					this.approved = true;
					return ;
				}
					
			}
		}
	}
	
	public void updateRoleStatus(){
		checkApproval();
	}
	
	public RoleImpl addPlacement(RoleImpl role){
		for (RoleImpl r: this.roles){
			if (role.getStart().before(r.getEnd()))
				return null;
		}
		this.roles.add(role);
		checkApproval();
		
		return role;
	}
	////////////////////////
	
	public int getID(){
		return this.id;
	}
	
	//changed
	public ArrayList<RoleImpl> getRole(){
		return this.roles;
	}
	
	public Student getStudent(){
		return this.student;
	}
	
	public String getManager(){
		return this.manager;
	}
	
	public String getContact(){
		return this.contact;
	}
	
	public void setStudent(Student s){
		this.student = s;
	}
	
	public void setManager(String m){
		this.manager = m;
	}
	
	public void setContact(String c){
		this.contact = c;
	}
}












