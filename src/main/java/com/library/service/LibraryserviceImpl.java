package com.library.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.Model.Book;
import com.library.Model.Student;
import com.library.Model.Library;
import com.library.Repository.LibraryRepository;

@Service
public class LibraryserviceImpl implements Libraryservice {

	@Autowired
	private LibraryRepository repo;

	public boolean adminlogin(String username, String password) {
		if (username.equals("admin") && password.equals("admin123"))
			return true;
		else
			return false;
	}

	public void saveLibrary(Library libr) {
		System.out.println("Inside service Layer");
		System.out.println(libr);
		repo.saveLibrary(libr);
	}

	public List<Library> getAllData() {
		return repo.getAllData();

	}

	public List<Library> deleteLibrary(int id) {

		return repo.deleteLibrary(id);
	}

	public Library getLibraryData(int id) {

		return repo.getLibraryData(id);
	}
	//get for the checking the email is present or not in data  base
	public Library getMailData(String email_addres) {
		
		return repo.getMailData(email_addres);
	}

	public List<Library> updateLibrary(Library libr) {

		return repo.updateLibrary(libr);
	}

	public boolean validateLogin(String enteredUsername, String enteredPassword) {
		// TODO Auto-generated method stub
		return repo.validateLogin(enteredUsername, enteredPassword);
	}

	public void saveAddbook(Book abook) {
		System.out.println("Inside service Layer");
		System.out.println(abook);
		repo.saveAddbook(abook);

	}

	public List<Book> getAllBookData() {

		return repo.getAllBookData();
	}

	public List<Book> BookdeleteLibrary(String cellno) {

		return repo.BookdeleteLibrary(cellno);
	}

	public void saveIssuebook(Student issuebook) {
		System.out.println("Inside service Layer");
		System.out.println(issuebook);
		repo.saveIssuebook(issuebook);

	}

	public List<Student> getAllIssueBookData() {

		return repo.getAllIssueBookData();

	}

	public void returnBook(String cellNo, String studentid) {
		repo.returnBook(cellNo, studentid);

	}
	
	//Update or edit or delete functionality

	public List<Book> deletebook(String cellno) {
		// TODO Auto-generated method stub
		return repo.deletebook(cellno);
	}

	public Book getBookData(String cellno) {
		// TODO Auto-generated method stub
		return repo.getBookData(cellno);
	}

	public List<Book> updatebook(Book abook) {
		// TODO Auto-generated method stub
		return repo.updatebook(abook);
	}

	public boolean checkReturnStatusByStudentId(String studentid) {
		// TODO Auto-generated method stub
		return repo.checkReturnStatusByStudentId(studentid);
	}

	

	

}
