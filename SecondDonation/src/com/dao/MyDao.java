package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.Contactus;
import com.model.Donatenow;
import com.model.Person;

public class MyDao extends HibernateDaoSupport {
	
	public void insertPerson(Person p)
	{
		getHibernateTemplate().save(p);
	}

	public Person getPersonByUsernameAndPassword(String username,String password) {
		
		List<Person> personlist=getHibernateTemplate().find("from Person where Mobile=? and Password=?",username,password);
		
		if(personlist.isEmpty()) {
			return null;
		}
		else return personlist.get(0);
		
	}
	
	public void contactdetails(Contactus cu) {
		
		getHibernateTemplate().save(cu);
	}
	
	public void insertdonatedetails(Donatenow dn)
	{
		getHibernateTemplate().save(dn);
	}
	
	public List<Donatenow> getdonationdetails(String username)
	{
		List<Donatenow> dnm=getHibernateTemplate().find("from Donatenow where Mobile=?",username);
		return dnm;
	}
}
