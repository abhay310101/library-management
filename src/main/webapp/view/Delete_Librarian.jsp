<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Title Here</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
        body {
            background-color: black; /* Set a light background color */
        }

        .form-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
            padding: 30px;
            margin-top: 50px;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #0056b3; /* Darken the color on hover */
        }
        .card{
        background-color: orange; }
    </style>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        
            <div class="col-3">
                <a class="navbar-brand mb-0 h1" href="your-url">Home</a>
                <a class="navbar-brand mb-0 h1" href="your-url">Admin</a>
                <a class="navbar-brand mb-0 h1" href="your-url">Librarian</a>
            </div>
            <!-- Add other navbar content or columns here -->
        
    </div>
</nav>
    <h2 style="text-align:center; color:white">Wel-come To Library Management</h2>
    

    
           
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="form-container">
                            <h1 class="card-title">Librarian Login</h1>
                            <form id="librarian-login-form" action="Librarianhomepage" method="post">
                                <!-- Display error message if loginError is present -->
                             		
                                    <div class="alert alert-danger">${errorMessage}</div>
                              
                                <div class="mb-3">
                                    <label for="enteredUsername" class="form-label">Email address</label>
                                    <input type="text" class="form-control" id="enteredUsername" name="enteredUsername" placeholder="Email@123" required>
                                </div>
                                <div class="mb-3">
                                    <label for="enteredPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="enteredPassword" name="enteredPassword" placeholder="Password" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // Function to show error message
        function showErrorMessage(formId, errorMessage) {
            const errorMessageElement = document.getElementById(formId + "-error-message");
            errorMessageElement.innerText = errorMessage;
            errorMessageElement.style.display = "block";
        }

        // Check if there's a parameter in the URL indicating wrong credentials
        const urlParams = new URLSearchParams(window.location.search);
        const errorMessage = urlParams.get('error');
        const errorElement = document.getElementById("admin-error-message");

        // Show error message if present in the URL
        if (errorMessage) {
            errorElement.innerText = errorMessage;
            errorElement.style.display = "block";
        }

        // Check if login attempt was unsuccessful and show error message accordingly
        document.getElementById('admin-login-form').addEventListener('submit', function(event) {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Check if the username and password are incorrect
            if (username !== 'admin' || password !== 'admin123') {
                // Prevent the form from submitting
                event.preventDefault();
                // Show the error message
                if (username !== 'admin' && password !== 'admin123') {
                    showErrorMessage("admin", "Username and password are incorrect");
                } else if (username !== 'admin') {
                    showErrorMessage("admin", "Username is incorrect");
                } else {
                    showErrorMessage("admin", "Password is incorrect");
                }
            }
        });
    </script>
</body>
</html>
