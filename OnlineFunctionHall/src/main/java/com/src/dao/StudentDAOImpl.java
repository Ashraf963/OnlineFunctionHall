package com.src.dao;

	import java.util.List;

	import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

	import com.src.model.Student;
import com.src.model.Booking;

	@Repository
	public class StudentDAOImpl implements StudentDAO{

		@Autowired
		private SessionFactory sessionFactory;

		public void addStudent(Student student) {
			sessionFactory.getCurrentSession().saveOrUpdate(student);

		}

		@SuppressWarnings("unchecked")
		
		@Override
		public void addBookingEvent(Booking booking) {
			sessionFactory.getCurrentSession().saveOrUpdate(booking);
			
		}


	@Override
	public List<Booking> getbookingDetails() {
		return sessionFactory.getCurrentSession().createQuery("from Booking")
				.list();

	}
		@Override
		public List<Student> getAllStudents() {
			return sessionFactory.getCurrentSession().createQuery("from Student")
					.list();
		}

		@Override
		public void deleteStudent(Integer studentId) {
			Student employee = (Student) sessionFactory.getCurrentSession().load(
					Student.class, studentId);
			if (null != employee) {
				this.sessionFactory.getCurrentSession().delete(employee);
			}
		}

		@Override
		public Student updateStudent(Student student) {
			sessionFactory.getCurrentSession().update(student);
			return student;
		}

		@Override
		public Student getStudent(int studentid) {
			return (Student) sessionFactory.getCurrentSession().get(
					Student.class, studentid);
		
		}
		@Override
		public Student login(String email,String pwd) {
			Student l=new Student();

			l=(Student)sessionFactory.getCurrentSession().createQuery("from Student as u where u.email=:i and u.pwd=:j").setParameter("i",email).setParameter("j", pwd).uniqueResult();
			
			if(l!=null)
			{
				return l;
			}
			else
			{
			return null;
			}

	}}
