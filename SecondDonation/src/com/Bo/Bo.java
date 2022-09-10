package com.Bo;

import java.util.List;

import com.dao.MyDao;
import com.model.Contactus;
import com.model.Donatenow;
import com.model.Person;

public class Bo {
	
	private MyDao dao;

	public MyDao getDao() {
		return dao;
	}

	public void setDao(MyDao dao) {
		this.dao = dao;
	}
	
	public void insertPerson(Person p)
	  {
			dao.insertPerson(p);
	  }

	 public Person getPersonByUsernameAndPassword(String username,String password)
	  {
		 return dao.getPersonByUsernameAndPassword(username, password);
	  }
	 public void contactdetails(Contactus cu) {
		 
		 dao.contactdetails(cu);
	 }
	 
	  public void insertdonatedetails(Donatenow dn)
			{
				dao.insertdonatedetails(dn);
			}
	  
	  public List<Donatenow> getdonationdetails(String username)
	  {
		  return dao.getdonationdetails(username);
	  }
	  
	  
}
