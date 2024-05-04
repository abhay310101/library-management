package com.library.service;

import java.util.List;

import com.library.Model.*;

public interface Libraryservice {

	void saveLibrary(Library libr);

	boolean adminlogin(String username, String password);

	List<Library> getAllData();

	List<Library> deleteLibrary(int id);

	Library getLibraryData(int id);
	
	//Email checking 
	Library getMailData(String email_addres);

	List<Library> updateLibrary(Library libr);

	// Library getLibraryDataone(int id);
	
	boolean validateLogin(String enteredUsername, String enteredPassword);

	void saveAddbook(Book abook);
	
	List<Book> getAllBookData();

	List<Book> BookdeleteLibrary(String cellno);

	void saveIssuebook(Student issuebook);

	List<Student> getAllIssueBookData();

	void returnBook(String cellNo, String studentid);
	
	//book's a update or edit or delete functionality 

	List<Book> deletebook(String cellno);

	Book getBookData(String cellno);

	List<Book> updatebook(Book abook);

	boolean checkReturnStatusByStudentId(String studentid);


	
	

}
