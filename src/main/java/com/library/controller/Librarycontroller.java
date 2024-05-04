package com.library.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;  // Import the Model class
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.library.Model.Library;
import com.library.service.Libraryservice;


@Controller
public class Librarycontroller {

    @Autowired
    private Libraryservice service;

    @RequestMapping("/")
    public String Indexpage() {
        return "index";
    }

    @RequestMapping("/adminlogin")
    public String adminlogin(@RequestParam String username, @RequestParam String password, Model model) {
        
        System.out.println(username+" "+password);
       
        boolean isValid = service.adminlogin(username, password);

        if (isValid) {
            
            return "Admin_Login"; 
        } else {
           
            return "index"; 
        }
    }
    
    @RequestMapping("/eLibrary")
    public String MainPage() {
    	return "index";
    }
    
    @RequestMapping("/home")
    public String HomePageAdmin() {
    	return "Admin_Login";
    }
    
    
    @RequestMapping("/Addlibrarian")
    public String AddlibrarianPage() {
    	return "Add_Librarian";
    }
    
    /*@RequestMapping("/FillAddlibrarianFrom")
    public String AddlibrarianFrom(@ModelAttribute ("library")Library library, Model model) {
       
    	    	Library existingLibrary = service.getLibraryData(library.getId());
        if (existingLibrary != null) { 
            
            return "Add_Librarian";
        } else {
            // Save the Library object if the ID is unique
        	model.addAttribute("message", "Librarian with this ID already exists");
            service.saveLibrary(library);
            return "Add_Librarian";
        }
    }*/
    
    @RequestMapping("/FillAddlibrarianFrom")
    public String AddlibrarianFro(@ModelAttribute Library library, Model model) {

        // Check if the ID already exists in the database
        Library existingLibrary = service.getLibraryData(library.getId());
        if (existingLibrary != null) {
            model.addAttribute("message", "Librarian with this ID already exists");
            return "Add_Librarian"; // Assuming this is your view librarian page
        } 
        
        // Check if the email already exists in the database
        Library existingLibraryByEmail = service.getMailData(library.getEmail_address());
        if(existingLibraryByEmail != null) {
            model.addAttribute("message1", "Librarian with this email address already exists");
            return "Add_Librarian";
        }
        
        // Save the Library object if the email and ID are unique
        service.saveLibrary(library);
        return "Add_Librarian"; // Assuming this is your view librarian page
    }
///////////////////////////////////////////////////
    
    
    @RequestMapping("/FillAddlibrarianFroms")
    public String AddlibrarianFrom(@ModelAttribute Library library, Model model) {

        // Check if the ID already exists in the database
        Library existingLibrary = service.getLibraryData(library.getId());
        if (existingLibrary != null) {
            model.addAttribute("message", "Librarian with this ID already exists");
            return "Librarianregistration"; // Assuming this is your view librarian page
        } 
        
        // Check if the email already exists in the database
        Library existingLibraryByEmail = service.getMailData(library.getEmail_address());
        if(existingLibraryByEmail != null) {
            model.addAttribute("message1", "Librarian with this email address already exists");
            return "Librarianregistration";
        }
        
        // Save the Library object if the email and ID are unique
        service.saveLibrary(library);
        return "Librarianregistration"; // Assuming this is your view librarian page
    }

    
    
    
    
    
    


    
    @RequestMapping("/viewlibrarian")
    public String Allviewlibrarian(Model model) {
    	
    	List<Library> list =service.getAllData();
    	model.addAttribute("data",list);
    	
    	return "View_Librarian";
    	
    	
    }
    
    @RequestMapping("/delete")
    public String deleteLibrary(@RequestParam int id, Model model ) {
    	System.out.println("=====================");
    	List<Library> list=service.deleteLibrary(id);
    	
    	model.addAttribute("data", list);
    	return "View_Librarian";
    	
    }
    
    
    
    @RequestMapping("/edit")
    public String editLibrary(@RequestParam int id,Model model)
    	{
    		System.out.println("Librarian Id controller"+id);
    		Library libr = service.getLibraryData(id);
    		model.addAttribute("Library",libr);
    		return "Update";
    	}
    
    
    
    @RequestMapping("/update")
    public String updateLibrary(@ModelAttribute Library libr ,Model model)
    {
    	System.out.println(libr);
    	
    	List<Library> list= service.updateLibrary(libr);
    	
    	model.addAttribute("data",list);
    	return "View_Librarian";
    	
    }
    
    @RequestMapping("/logout")
    public String logout(HttpServletResponse response) {
        // Perform logout actions, such as invalidating session, clearing authentication, etc.
        // For example, in Spring Security, you might use the following:
        // SecurityContextHolder.clearContext();
        // session.invalidate();

        // Set response headers to disable caching
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");

        // Redirect the user to the login page or any other page after logout
        return "index";
        } 
    @RequestMapping("/librarianregistration")
    
    public String Librarianreggistration(){
    	
    	return "Librarianregistration";
    }
}
