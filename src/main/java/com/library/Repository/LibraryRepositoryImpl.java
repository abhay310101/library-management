package com.library.Repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.library.Model.Book;
import com.library.Model.Student;
import com.library.Model.Library;

@Repository
public class LibraryRepositoryImpl implements LibraryRepository {

	@Autowired
	private SessionFactory sf;

	public void saveLibrary(Library libr) {
		System.out.println("Inside Repositroy Layer");
		System.out.println(libr);

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.save(libr);
		tx.commit();

	}
	
	

	
	

	public List<Library> getAllData() {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();

		Query query = session.createQuery("from Library");

		List<Library> list = query.getResultList();

		return list;
	}

	public List<Library> deleteLibrary(int id) {
	    if (id <= 0) {
	        // Handle the case where id is 0 or negative
	        throw new IllegalArgumentException("Invalid library id");
	    }
	    
	    Session session = sf.openSession();
	    Transaction tx = null;
	    
	    try {
	        tx = session.beginTransaction();
	        Library libr = session.get(Library.class, id);
	        
	        if (libr == null) {
	            // Handle the case where the library with the given id doesn't exist
	            throw new IllegalArgumentException("Library not found with id: " + id);
	        }
	        
	        session.delete(libr);
	        tx.commit();
	        System.out.println("Library deleted successfully");
	    } catch (HibernateException e) {
	        if (tx != null) {
	            tx.rollback();
	        }
	        e.printStackTrace();
	        // Handle other exceptions or rethrow if necessary
	    } finally {
	        session.close();
	    }
	    
	    return getAllData();
	}


	public Library getLibraryData(int id) {
		Session session = sf.openSession();

		Library library = session.get(Library.class, id);
		return library;
	}
	
	
	
	//Mail checking 
	
	public Library getMailData(String email_address) {
	    Session session = sf.openSession();
	    
	    // Create a query to retrieve the Library object based on the email address
	    Query<Library> query = session.createQuery("FROM Library WHERE email_address = :email", Library.class);
	    query.setParameter("email", email_address);
	    
	    // Execute the query and get the result
	    Library library = query.uniqueResult();
	    
	    session.close(); // Close the session
	    
	    return library;
	}

	

	public List<Library> updateLibrary(Library libr) {
		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.update(libr);

		tx.commit();

		List<Library> list = getAllData();

		return list;

	}

/////////////////////////////////////

	

	public boolean validateLogin(String enteredUsername, String enteredPassword) {
	    Session session = null;
	    try {
	        session = sf.openSession();
	        // Use HQL (Hibernate Query Language) to retrieve the Library by email and password (ID)
	        String hql = "FROM Library WHERE Email_Address = :email AND password = :password";
	        
	        Query<Library> query = session.createQuery(hql, Library.class);
	        query.setParameter("email", enteredUsername);  // Use enteredUsername instead of email
	        query.setParameter("password", enteredPassword);  // Use enteredPassword instead of password

	        Library library1 = query.uniqueResult();

	        return library1 != null;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    } finally {
	        if (session != null && session.isOpen()) {
	            session.close();
	        }
	    }
	}


	
	public void saveAddbook(Book abook) {
		System.out.println("Inside Repositroy Layer");
		System.out.println(abook);

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.save(abook);
		tx.commit();
		
	}

	
	public List<Book> getAllBookData() {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();

		Query query = session.createQuery("from Book");

		List<Book> list = query.getResultList();

		return list;
	}

	
	public List<Book> BookdeleteLibrary(String cellno) {
		
		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		Book abook = session.get(Book.class, cellno);

		session.delete(abook);
		tx.commit();
		System.out.println("Repo");
		return getAllBookData();
	}

	public void saveIssuebook(Student student) {
	    System.out.println("Inside Repository Layer");
	    System.out.println(student);

	    Session session = sf.openSession();
	    Transaction tx = session.beginTransaction();

	    // Check if the student exists in the database
	    Student existingStudent = session.get(Student.class, student.getStudentid());
	    if (existingStudent == null) {
	        // If the student doesn't exist, set the return status to "No" by default
	        student.setReturnStatus("No");
	        

	        // Save the student's data
	        session.save(student);
	        tx.commit();
	        System.out.println("Student data saved successfully.");
	    } else {
	        // If the student exists and the return status is "Yes", update it to "No"
	        if ("Yes".equalsIgnoreCase(existingStudent.getReturnStatus())) {
	            // Update the return status of the student to "No" as a new book is being issued
	            existingStudent.setReturnStatus("No");
	            
	            // Save or update the student's data
	            existingStudent.setDate(student.getDate());
	            existingStudent.setCellno(student.getCellno());
	            session.update(existingStudent);
	           
	            
	            tx.commit();
	            System.out.println("Student data updated successfully for issuing a new book.");
	        } else {
	            System.out.println("Your return status is not 'Yes'. Please return the previous book before issuing a new one.");
	            tx.rollback(); // Rollback the transaction
	            
	            
	            
	        }
	    }

	    session.close();
	}





	/*public void saveIssuebook(Student student) {
		
		System.out.println("Inside Repositroy Layer");
		System.out.println(student);
		
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		student.setReturnStatus("No");

		session.save(student);
		
		tx.commit();
	}*/

	public List<Student> getAllIssueBookData() {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();

		Query query = session.createQuery("from Student");

		List<Student> list = query.getResultList();

		return list;
	}

	/*public void returnBook(String cellNo, String studentid) {
		
		Session session = sf.openSession();
		
		Student stu = session.get(Student.class, studentid);
		
		stu.setReturnStatus("yes");
		session.saveOrUpdate(stu);
		session.beginTransaction().commit();
		
	}*/

	public void returnBook(String cellNo, String studentid) {
	    try {
	        Session session = sf.openSession();
	        Student stu = session.get(Student.class, studentid);
	        
	        if (stu != null) {
	            stu.setReturnStatus("yes");
	            session.saveOrUpdate(stu);
	            session.beginTransaction().commit();
	        } else {
	            // Handle the case where student is not found
	            System.out.println("Student with ID " + studentid + " not found.");
	            // You can throw an exception or handle it according to your application logic
	        }
	    } catch (Exception e) {
	        // Handle any other exceptions that might occur
	        e.printStackTrace(); // or log the exception
	        // You can also throw a custom exception or handle it based on your application requirements
	    }
	}


//Book functionality Delete and update and edit



	public List<Book> deletebook(String cellno) {
		
		if (cellno == null || cellno.trim().isEmpty()) {
		    throw new IllegalArgumentException("Invalid cell number");
		}

	    
	    Session session = sf.openSession();
	    Transaction tx = null;
	    
	    try {
	        tx = session.beginTransaction();
	       Book ebook = session.get(Book.class, cellno);
	        
	        if (ebook == null) {
	            // Handle the case where the library with the given id doesn't exist
	            throw new IllegalArgumentException("Library not found with id: " + cellno);
	        }
	        
	        session.delete(ebook);
	        tx.commit();
	        System.out.println("Library deleted successfully");
	    } catch (HibernateException e) {
	        if (tx != null) {
	            tx.rollback();
	        }
	        e.printStackTrace();
	        // Handle other exceptions or rethrow if necessary
	    } finally {
	        session.close();
	    }
	    
	    return getAllBookData();
	}
	/*public List<Book> deletebook(String cellno) {
	    Session session = sf.openSession();
	    Transaction tx = null;
	    
	    try {
	        tx = session.beginTransaction();
	        Book ebook = session.get(Book.class, cellno);
	        
	        if (ebook == null) {
	            // Handle the case where the library with the given id doesn't exist
	            throw new IllegalArgumentException("Library not found with id: " + cellno);
	        }
	        
	        session.delete(ebook);
	        tx.commit();
	        System.out.println("Library deleted successfully");
	    } catch (HibernateException e) {
	        if (tx != null) {
	            tx.rollback();
	        }
	        e.printStackTrace();
	        // Handle other exceptions or rethrow if necessary
	    } catch (IllegalArgumentException e) {
	        // Handle the case where the library with the given id doesn't exist
	        // Log the error or handle it appropriately
	        e.printStackTrace();
	        // You might want to return an appropriate response to the caller
	    } finally {
	        session.close();
	    }
	    
	    return getAllBookData();
	}*/







	public Book getBookData(String cellno) {
		Session session = sf.openSession();

		Book book = session.get(Book.class, cellno);
		return book;
	}






	public List<Book> updatebook(Book abook) {
		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.update(abook);

		tx.commit();

		List<Book> list = getAllBookData();

		return list;

	}




	//check the return Stutes:

	public boolean checkReturnStatusByStudentId(String studentid) {
	    Session session = sf.openSession();

	    // Create a query to retrieve the student based on the student ID
	    Query<Student> query = session.createQuery("FROM Student WHERE studentid = :studentid", Student.class);
	    query.setParameter("studentid", studentid);

	    // Execute the query and get the result
	    Student student = query.uniqueResult();

	    session.close(); // Close the session

	    // Check if the student doesn't exist or their return status is not "Yes"
	    return student == null || "Yes".equalsIgnoreCase(student.getReturnStatus());
	}







 






	
}
