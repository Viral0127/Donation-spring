package com.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.cookie;

import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.bcel.generic.AllocationInstruction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.Bo.Bo;
import com.model.Person;
import com.model.*;

@Controller
@SessionAttributes("person")
public class MyController {
	
	
	public Bo getBoBean() {
		
		ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
		Bo dnbo=(Bo) a.getBean("bo");
		return dnbo;
		
	}
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index()
	{
		return "index";
	}

	@RequestMapping(value="/Gallery", method=RequestMethod.GET)
	public String Gallery()
	{
		return "Gallery";
	}
	
	
	@RequestMapping(value="/Contactus", method=RequestMethod.GET)
	public String Contactus()
	{
		return "Contactus";
	}
	
	@RequestMapping(value="/Submit", method=RequestMethod.POST)
	public String submit(HttpServletRequest request,HttpServletResponse response) {
		
		Contactus cu=new Contactus();
		cu.setFirstname(request.getParameter("Firstname"));
		cu.setLastname(request.getParameter("Lastname"));
		cu.setMobile(request.getParameter("Mobile"));
		cu.setSubject(request.getParameter("Subject"));
		
		ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
		Bo cbo=(Bo) a.getBean("bo");
		cbo.contactdetails(cu);
		
		
		
		
		return "index";
		
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String indexa()
	{
		return "index";
	}
	
	@RequestMapping(value="/Signupnow", method=RequestMethod.GET)
	public String Signupnow()
	{
		return "Signupnow";
	}
	
	@RequestMapping(value="/Signup", method=RequestMethod.POST)
	public ModelAndView insert(HttpServletRequest request,HttpServletResponse response,ModelMap map) {
		
		
		Person p=new Person();
		ModelAndView m=new ModelAndView("Login");
		p.setFirstname(request.getParameter("Firstname"));
		p.setLastname(request.getParameter("Lastname"));
		p.setMobile(request.getParameter("Mobile"));
		p.setPassword(request.getParameter("Password"));
		p.setRepassword(request.getParameter("Repassword"));
		
		if(!p.getFirstname().matches("[A-Za-z]+"))
		{
			m.addObject("error1","invalid Firstname");
		}
		if(!p.getLastname().matches("[A-Za-z]+"))
		{
			m.addObject("error2","invalid Lastname");
		}
		if(p.getMobile().length()!=10 || !p.getMobile().matches("[0-9]+"))
		{
		m.addObject("error3","mobile no. must be 10 digits");
		m.setViewName("Signupnow");
		}
		if(p.getPassword().equals(p.getRepassword()))
		{
			m.addObject("error4","password not match");
		}
		
		
		ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
		Bo pbo=(Bo) a.getBean("bo");
		pbo.insertPerson(p);
		
		return m;
		
		
		
	}
	
	
	public boolean checkSession(HttpServletRequest httpServletRequest) {
		
		HttpSession httpsession=httpServletRequest.getSession();
		if((Person)httpsession.getAttribute("person")!=null) {
			
			 return true;
		}
		return false;
		
		
		
	}
	
	@RequestMapping(value="/Login", method=RequestMethod.GET)
	public ModelAndView Login(HttpServletRequest httpServletRequest)
	{
		if(checkSession(httpServletRequest) == false) {
	
		return new ModelAndView("Login");
		}
		return new ModelAndView("index");
	}
	
	
	@RequestMapping(value="/Signin", method=RequestMethod.POST)
	public ModelAndView Signin(HttpServletRequest request,HttpServletResponse response,ModelMap map) {
		
		
		ModelAndView mv=new ModelAndView("redirect:/index");
		
		if(checkSession(request)== false)
		{
			
		
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		
		if(username != null && password != null)
		{
			
			
			Person person = null;
			Bo bo = getBoBean();
			person = bo.getPersonByUsernameAndPassword(username,password);
			if(person==null)
			{
				mv.addObject("error","Invalid username or password");	
				mv.setViewName("Login");
			}
				else
				{
					HttpSession httpSession = request.getSession();
					person.setPassword(new String(Base64.getEncoder().encode(person.getPassword().getBytes())));
					httpSession.setAttribute("person",person);
					System.err.println("Session Initialised=="+person.getFirstname());
				}
			
			}
		
		if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {

			mv.setViewName("Adminhome");
		}
		}
		
		
		return mv;
		
	}
	
	@RequestMapping(value="/Logout",method=RequestMethod.GET)
	public ModelAndView Logout(HttpServletRequest httpServletRequest){
		
		
		
		HttpSession session=httpServletRequest.getSession();
		
		session.setAttribute("person", null);

		session.invalidate();
		return new  ModelAndView("index");
		
		
	}
	
	@RequestMapping(value="/Donatenow", method=RequestMethod.GET)
	public String Donatenow()
	{
		return "Donatenow";
	}
	
	@RequestMapping(value="/Proceed", method=RequestMethod.POST)
	public ModelAndView Proceed(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession httpSession = request.getSession();
		Person person = (Person) httpSession.getAttribute("person");
		ModelAndView modelAndView = new ModelAndView("Yourrequest");
		
		Donatenow dn=new Donatenow();
		dn.setMobile(request.getParameter("Mobile"));
		dn.setClothesquantity(request.getParameter("Clothesquantity"));
		dn.setShoesquantity(request.getParameter("Shoesquantity"));
		dn.setStationeryquantity(request.getParameter("Stationeryquantity"));
		dn.setGlossaryquantity(request.getParameter("Glossaryquantity"));
		dn.setClothesdescription(request.getParameter("Clothesdescription"));
		dn.setShoesdescription(request.getParameter("Shoesdescription"));
		
		dn.setStationerydescription(request.getParameter("Stationerydescription"));
		dn.setGlossarydescription(request.getParameter("Glossarydescription"));
		dn.setSubject(request.getParameter("Subject"));
		dn.setTime(request.getParameter("Time"));
		dn.setDate(request.getParameter("Date"));
		dn.setPincode(request.getParameter("Pincode"));
		dn.setAddress1(request.getParameter("Address1"));
		dn.setAddress2(request.getParameter("Address2"));
		ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
		Bo dnbo = (Bo) a.getBean("bo");
		dnbo.insertdonatedetails(dn);
		List<Donatenow>	dnlist = dnbo.getdonationdetails(person.getMobile());
		modelAndView.addObject("list",dnlist);
		
		return modelAndView;
		
		
	}
	
	@RequestMapping(value="/Admincontactus", method=RequestMethod.GET)
	public String Admincontactus()
	{
		return  "Admincontactus";
	}
	@RequestMapping(value="/Adminhome" , method=RequestMethod.GET)
	public String Adminhome()
	{
		return "Adminhome";
	}
	@RequestMapping(value="/Adminregistered" , method=RequestMethod.GET)
	public String Adminregistered()
	{
		return "Adminregistered";
	}
	@RequestMapping(value="/Adminrequest" , method=RequestMethod.GET)
	public String Adminrequest()
	{
		return "Adminrequest";
	}
	
}

