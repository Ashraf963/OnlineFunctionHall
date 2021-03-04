package com.src.dao;
	import java.util.List;
	import com.src.model.Student;
import com.src.model.Booking;

	public interface StudentDAO {

		public void addStudent(Student student);

		public List<Student> getAllStudents();

		public void deleteStudent(Integer studentId);

		public Student updateStudent(Student student);

		public Student getStudent(int studentid);
		
		public Student login(String email,String pwd);
		public void addBookingEvent(Booking booking);

		public List<Booking> getbookingDetails();
	}


