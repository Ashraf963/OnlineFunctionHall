package com.src.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.src.model.Booking;
import com.src.model.Student;
import com.src.service.StudentService;

 

@Controller
public class StudentController {
	private static final Logger logger = Logger
			.getLogger(StudentController.class);

	public StudentController() {
		System.out.println("StudentController()");
	}
	
	@Autowired
	StudentService studentservice;
	@RequestMapping(value = "/")
	public ModelAndView listStudent(ModelAndView model) throws IOException {
		List<Student> listStudent = studentservice.getAllStudent();
		model.addObject("listStudent", listStudent);
		model.setViewName("home");
		return model;
	}

//	@RequestMapping("/stdregister")
//	public ModelAndView registerstudent(ModelAndView mvc)
//	
//	{
//		Student s=new Student();
//		mvc.addObject("student",s);
//		mvc.setViewName("Student Form");
//		return mvc;
//	}

	@RequestMapping(value="/saveStudent",method=RequestMethod.POST)
	public ModelAndView saveStudent(@ModelAttribute("student") Student st, ModelAndView mvc)
	
	{
		studentservice.addStudent(st);
		//return new ModelAndView("redirect:StudentView");
		mvc.setViewName("StudentView");
		return mvc;
	}
	@RequestMapping(value = "/newStudent", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Student student = new Student();
		model.addObject("student", student);
		model.setViewName("Student Form");
		return model;
	}
	@RequestMapping(value = "/getAllStudent")
	public ModelAndView getAllStudent(ModelAndView model) throws IOException {
		List<Student> student = studentservice.getAllStudent();
		model.addObject("student", student);
		model.setViewName("StudentView");
		return model;
	}
	
	@RequestMapping(value = "/saveBookingEvent", method = RequestMethod.POST)

	public ModelAndView saveBookingEvent(@ModelAttribute Booking booking) {
				
		studentservice.addBookingEvent(booking);
		
		return new ModelAndView("redirect:/getbookingDetails");
	
}
	@RequestMapping(value = "/newBookingEvent", method = RequestMethod.GET)
	public ModelAndView newBookingEvent(ModelAndView model) {
		Booking booking = new Booking();
		model.addObject("booking", booking);
		model.setViewName("Booking");
		return model;
	}


@RequestMapping(value = "/getbookingDetails")
	public ModelAndView getbookingDetails(ModelAndView model) throws IOException {
		List<Booking> booking = studentservice.getbookingDetails();
		model.addObject("booking", booking);
		model.setViewName("BookingView");
		return model;
	}
	@RequestMapping("/enter")
	public ModelAndView log(ModelAndView mvc)
	
	{
		mvc.setViewName("enter");
		return mvc;
	}
	@RequestMapping("/home")
	public ModelAndView h(ModelAndView mvc)
	
	{
		mvc.setViewName("home");
		return mvc;
	}
	
	@RequestMapping("/services")
	public ModelAndView Book(ModelAndView mvc)
	
	{
		mvc.setViewName("services");
		return mvc;
	}
	
	
	@RequestMapping("/BookFunctionHall")
	public ModelAndView ser(ModelAndView mvc)
	
	{
		mvc.setViewName("BookFunctionHall");
		return mvc;
	}
	
	@RequestMapping("/ListofFunctionHalls")
	public ModelAndView list(ModelAndView mvc)
	
	{
		mvc.setViewName("ListofFunctionHalls");
		return mvc;
	}
	
	@RequestMapping("/AlreadyBookedFunctionHalls")
	public ModelAndView already(ModelAndView mvc)
	
	{
		mvc.setViewName("AlreadyBookedFunctionHalls");
		return mvc;
	}
	
	@RequestMapping("/phone")
	public ModelAndView phone(ModelAndView mvc)
	
	{
		mvc.setViewName("phone");
		return mvc;
	}
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mvc)
	
	{
		mvc.setViewName("home");
		return mvc;
	}
	
	@RequestMapping(value="/homelogin")
	public ModelAndView login(@ModelAttribute("student") Student student,BindingResult result,@RequestParam("uname")String uname,@RequestParam("pwd")String pwd,ModelAndView model,Map m) {
		Student s1 = new Student();
		model.addObject("student", s1);
		
		Student isvalid=studentservice.login(uname,pwd);
		if(isvalid != null)
		{
			m.put("student", s1);
			model.setViewName("enter");
			return model;
		}
		else {
			result.rejectValue("pwd","invalid Username and Password");
			
			model.setViewName("invalid");
			return model;
		}}
	
}
	
