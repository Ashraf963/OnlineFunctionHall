package com.src.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.src.dao.StudentDAO;
import com.src.model.Student;
import com.src.model.Booking;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;

	@Override
	@Transactional
	public void addStudent(Student student) {
		studentDAO.addStudent(student);
	}

	@Override
	@Transactional
	public List<Student> getAllStudent() {
		return studentDAO.getAllStudents();
	}
	@Override
	@Transactional
	public void addBookingEvent(Booking booking) {
		studentDAO.addBookingEvent(booking);
		
	}
	@Override
	@Transactional
public List<Booking> getbookingDetails() {
	return studentDAO.getbookingDetails();
		}
	
	@Override
	@Transactional
	public void deleteStudent(Integer studentId) {
		studentDAO.deleteStudent(studentId);
	}

	@Override
	@Transactional
	public Student getStudent(int studentId) {
		return studentDAO.getStudent(studentId);
	}

	@Override
	@Transactional
	public Student updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDAO.updateStudent(student);
	}

	@Override
	@Transactional
	public Student login(String email,String pwd) {
		return studentDAO.login(email,pwd);
	
		
	
	}
}
