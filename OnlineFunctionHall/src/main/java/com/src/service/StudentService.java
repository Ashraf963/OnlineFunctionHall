package com.src.service;

import java.util.List;

import com.src.model.Student;
import com.src.model.Booking;

public interface StudentService {
	
	public void addStudent(Student student);

	public List<Student> getAllStudent();

	public void deleteStudent(Integer studentId);

	public Student getStudent(int studentid);

	public Student updateStudent(Student student);
	public Student login(String email,String pwd);
	public void addBookingEvent(Booking booking);
		
	
	public List<Booking> getbookingDetails();
	
	}

