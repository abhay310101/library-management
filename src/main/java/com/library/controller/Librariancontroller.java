package com.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.Model.Book;
import com.library.Model.Library;
import com.library.Model.Student;

import com.library.service.Libraryservice;

@Controller
public class Librariancontroller {

	@Autowired
	private Libraryservice service;

	@RequestMapping("/Librarianhomepage")
	public String login(@RequestParam String enteredUsername, @RequestParam String enteredPassword, Model model) {
	    // Validate the entered credentials
	    boolean isValid = service.validateLogin(enteredUsername, enteredPassword);
	    
	    // If valid, redirect to the librarian home page
	    if (isValid) {
	        return "Librarian_Home";
	    } else {
	        // If not valid, determine if the error is due to an incorrect username or password
	        String errorMessage = null;
	        if (!service.validateLogin(enteredUsername,enteredPassword)) {
	            // Username does not exist
	            errorMessage = "Wrong username";
	        } else {
	            // Username exists but password is incorrect
	            errorMessage = "Wrong password";
	        }
	        
	        // Add error message to the model and return to the login page
	        model.addAttribute("error", errorMessage);
	        return "index";
	    }
	}


	
	
	
	
	@RequestMapping("/AddBook")
	public String addbook() {
	return "AddBook";	
	}
	@RequestMapping("/GotoHomePage")
	public String Elibrary(){
		return "index";
	}
	@RequestMapping("/Addbook")
	public String addindatabasebook(@ModelAttribute Book addbook) {
		System.out.println("inside controller layer");
		System.out.println(addbook.toString());
		service.saveAddbook(addbook);
		return "AddBook";
	}
	@RequestMapping("/showbook")
    public String Allviewlibrarian(Model model) {
    	List<Book> list =service.getAllBookData();
    	model.addAttribute("data",list);
    	return "ViewBook";
    	}
	@RequestMapping("/Bookdelete")
	public String BookdeleteLibrary(@RequestParam String cellno,Model model ) {
		System.out.println("In controller Layer");
		List<Book> list=service.BookdeleteLibrary(cellno);
		model.addAttribute("data",list);
		return "ViewBook";
		}
	@RequestMapping("/Issuebook")
	public String Issuebookpage() {
		return "Issue_Book";
	}
	/*@RequestMapping("/AddIssuebook")
	public String Addisuuebook(@ModelAttribute Student issuebook) {
		System.out.println("inside controller layer");
		System.out.println(issuebook.toString());
		service.saveIssuebook(issuebook);
		return "Issue_Book";
		}*/
	@RequestMapping("/ShowIssuebook")
	public String showIssuebook(Model model) {
		List<Student> list =service.getAllIssueBookData();
    	model.addAttribute("data",list);
    	return "View_Issue_Book";
	}
	
	@RequestMapping("/AddIssuebook")
	public String Addisuuebook(@ModelAttribute Student issuebook, Model model) {
	    System.out.println("Inside controller layer");
	    System.out.println(issuebook.toString());
	    
	    // Check the return status of the student
	    boolean canIssueBook = service.checkReturnStatusByStudentId(issuebook.getStudentid());

	    if (!canIssueBook) {
	        // If the return status is "No", add an error message to the model
	        model.addAttribute("message", "You cannot issue a new book as you haven't returned the previous one.");
	        return "Issue_Book";
	    } else {
	        // If the return status is "Yes", proceed with saving the issuebook
	        service.saveIssuebook(issuebook);
	        return "Issue_Book";
	    }
	}

	
	@RequestMapping("/returnBook")
	public String Returnbook(@RequestParam String cellno, @RequestParam String studentid ) {
		System.out.println(cellno + " : "+studentid);
		service.returnBook(cellno,studentid);
		
		return "Return_Book";
	}
	
	

	@RequestMapping("/Return_Book")
	public String return_Book() {
		return "Return_Book";
	}
	@RequestMapping("/Home")
	public String home() {
		return "Librarian_Home";
	}
	
	@RequestMapping("/deletebook")
    public String deleteBook(@RequestParam String cellno, Model model ) {
    	System.out.println("=====================");
    	List<Book> list=service.deletebook(cellno);
    	
    	model.addAttribute("data", list);
    	return "ViewBook";
    	
    }
    
	/*@RequestMapping("/deletebook")
	public String deleteBook(@RequestParam(required = false) String cellno, Model model) {
	    if (cellno == null || cellno.isEmpty()) {
	        // Handle the case where the cellno parameter is missing or empty
	        System.out.println("Cellno parameter is missing or empty");
	        model.addAttribute("errorMessage", "Cellno parameter is missing or empty");
	        return "ViewBook";
	    }

	    try {
	        System.out.println("=====================");
	        List<Book> list = service.deletebook(cellno);
	        model.addAttribute("data", list);
	    } catch (Exception e) {
	        // Handle any other exceptions that may occur during deletion
	        e.printStackTrace(); // Log the exception or handle it as needed
	        model.addAttribute("errorMessage", "An error occurred while deleting the book");
	    }

	    return "ViewBook";
	}*/

    
    @RequestMapping("/editbook")
    public String editBook(@RequestParam String cellno,Model model)
    	{
    		System.out.println("Librarian Id controller"+cellno);
    		Book abook = service.getBookData(cellno);
    		model.addAttribute("Book",abook);
    		return "Updatebook";
    	}
    
    @RequestMapping("/updatebook")
    public String updatebook(@ModelAttribute Book abook ,Model model)
    {
    	System.out.println(abook);
    	
    	List<Book> list= service.updatebook(abook);
    	
    	model.addAttribute("data",list);
    	return "ViewBook";
    	
    }
	
	
}
