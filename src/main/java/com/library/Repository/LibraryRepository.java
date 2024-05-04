package com.library.Repository;

import java.util.List;

import com.library.Model.Book;
import com.library.Model.Student;
import com.library.Model.Library;

public interface LibraryRepository {

	

	void saveLibrary(Library libr);

	List<Library> getAllData();

	List<Library> deleteLibrary(int id);

	Library getLibraryData(int id);
	
	//Mail Checking 
	Library getMailData(String email_addres);

	List<Library> updateLibrary(Library libr);

	//////
	//boolean validateLogin = false;
	
	
	boolean validateLogin(String enteredUsername, String enteredPassword);

	void saveAddbook(Book abook);

	List<Book> getAllBookData();

	List<Book> BookdeleteLibrary(String cellno);

	void saveIssuebook(Student issuebook);

	List<Student> getAllIssueBookData();

	void returnBook(String cellNo, String studentid);
	
	//The functionality of the book update or edit and delete

	List<Book> deletebook(String cellno);

	Book getBookData(String cellno);

	List<Book> updatebook(Book abook);

	boolean checkReturnStatusByStudentId(String studentid);

	

	
}
