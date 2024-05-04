<%@ page import="com.library.Model.Student"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous">
    
    
    
    
    </script>
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

*,
::after,
::before {
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    font-size: 0.875rem;
    opacity: 1;
    overflow-y: scroll;
    margin: 0;
}

a {
    cursor: pointer;
    text-decoration: none;
    font-family: 'Poppins', sans-serif;
}

li {
    list-style: none;
}

h4 {
    font-family: 'Poppins', sans-serif;
    font-size: 1.275rem;
    color: var(--bs-emphasis-color);
}

/* Layout for admin dashboard skeleton */

.wrapper {
    align-items: stretch;
    display: flex;
    width: 100%;
}

#sidebar {
    max-width: 264px;
    min-width: 264px;
    background: var(--bs-dark);
    transition: all 0.35s ease-in-out;
}

.main {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    min-width: 0;
    overflow: hidden;
    transition: all 0.35s ease-in-out;
    width: 100%;
    background: var(--bs-dark-bg-subtle);
}

/* Sidebar Elements Style */

.sidebar-logo {
    padding: 1.15rem;
}

.sidebar-logo a {
    color: #e9ecef;
    font-size: 1.15rem;
    font-weight: 600;
}

.sidebar-nav {
    flex-grow: 1;
    list-style: none;
    margin-bottom: 0;
    padding-left: 0;
    margin-left: 0;
}

.sidebar-header {
    color: #e9ecef;
    font-size: .75rem;
    padding: 1.5rem 1.5rem .375rem;
}

a.sidebar-link {
    padding: .625rem 1.625rem;
    color: #e9ecef;
    position: relative;
    display: block;
    font-size: 0.875rem;
}

.sidebar-link[data-bs-toggle="collapse"]::after {
    border: solid;
    border-width: 0 .075rem .075rem 0;
    content: "";
    display: inline-block;
    padding: 2px;
    position: absolute;
    right: 1.5rem;
    top: 1.4rem;
    transform: rotate(-135deg);
    transition: all .2s ease-out;
}

.sidebar-link[data-bs-toggle="collapse"].collapsed::after {
    transform: rotate(45deg);
    transition: all .2s ease-out;
}

.avatar {
    height: 40px;
    width: 40px;
}

.navbar-expand .navbar-nav {
    margin-left: auto;
   
}

.content {
    flex: 1;
    max-width: 100vw;
    width: 100vw;
}

@media (min-width:768px) {
    .content {
        max-width: auto;
        width: auto;
    }
}

.card {
    box-shadow: 0 0 .875rem 0 rgba(34, 46, 60, .05);
    margin-bottom: 24px;
}

.illustration {
    background-color: var(--bs-primary-bg-subtle);
    color: var(--bs-emphasis-color);
}

.illustration-img {
    max-width: 150px;
    width: 100%;
}

/* Sidebar Toggle */

#sidebar.collapsed {
    margin-left: -264px;
}

/* Footer and Nav */

@media (max-width:767.98px) {

    .js-sidebar {
        margin-left: -264px;
    }

    #sidebar.collapsed {
        margin-left: 0;
    }

    .navbar
     {
        width: 100vw;
    }
}

/* Theme Toggler */

.theme-toggle {
    position: static;
    top: 6.5%;
    transform: translateY(-65%);
    text-align: center;
    z-index: 100;
    right:4%;
    left: auto;
    border: none;
    background-color: var(--bs-body-color);
}

html[data-bs-theme="dark"] .theme-toggle .fa-sun{
	cursor: pointer;
    padding: 10px;
    display: block;
    font-size: 1.25rem;
    color: black;
    background-color: white;
	
}
html[data-bs-theme="dark"] #Nav{
color: white;

}
html[data-bs-theme="dark"] #Nav:hover {
  color: green; /* Change text color to green on hover in dark theme */
  
}

html[data-bs-theme="light"] #Nav{
color: black;
}
html[data-bs-theme="light"] #Nav:hover {
  color: green; /* Change text color to green on hover in dark theme */
  text-decoration: underline;
}

html[data-bs-theme="light"] .theme-toggle .fa-moon {
    cursor: pointer;
    padding: 10px;
    display: block;
    font-size: 1.25rem;
    color: #FFF;
    background-color: black;
    
}

html[data-bs-theme="dark"] .theme-toggle .fa-moon {
    display: none;
}

html[data-bs-theme="light"] .theme-toggle .fa-sun {
    display: none;
}
        .container {
            max-width: 1000px;
            /* Limit form width */
            background-color: #fff;
            /* White background */
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            /* Add shadow */
            
            /* Center container */
            margin-top: 50px;
        }
        
         #Nav{
        
         font-size: 17px;
         text-decoration: none;
         }
         
         #Nav:hover {
      color: green;
    }
    @keyframes vibrate {
      0% {
        transform: translateX(0);
      }
      25% {
        transform: translateX(-3px);
      }
      50% {
        transform: translateX(3px);
      }
      75% {
        transform: translateX(-3px);
      }
      100% {
        transform: translateX(3px);
      }
    }

    #Nav:hover {
      animation: vibrate 0.3s infinite;
      color: green;
    }
    
    </style>
</head>

<body>
    <div class="wrapper">
        <aside id="sidebar" class="js-sidebar">
            <!-- Content For Sidebar -->
            <div class="h-100">
                <div class="sidebar-logo">
                    <a href="#">Pratibha</a>
                </div>
                <ul class="sidebar-nav">
                    <li class="sidebar-header">
                        Librarian Elements
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link">
                            <i class="fa-solid fa-list pe-2"></i>
                            Dashboard
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#pages" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-solid fa-file-lines pe-2"></i>
                            Pages
                        </a>
                        <ul id="pages" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link"></a>
                            </li>
                            <li class="sidebar-item">
                                <a href="eLibrary" class="sidebar-link">Home</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="Home" class="sidebar-link">Librarian</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="AddBook" class="sidebar-link">Add Book</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="showbook" class="sidebar-link">view Book</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="Issuebook" class="sidebar-link">Issue Book</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="ShowIssuebook" class="sidebar-link">View Issued Book</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="Return_Book" class="sidebar-link">Return Book</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#posts" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-solid fa-sliders pe-2"></i>
                            Posts
                        </a>
                        <ul id="posts" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">Post 1</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">Post 2</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">Post 3</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-item">
                        <a href="#" class="sidebar-link collapsed" data-bs-target="#auth" data-bs-toggle="collapse"
                            aria-expanded="false"><i class="fa-regular fa-user pe-2"></i>
                            Auth
                        </a>
                        <ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                            <li class="sidebar-item">
                                <a href="eLibrary" class="sidebar-link">Login</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">Register</a>
                            </li>
                            <li class="sidebar-item">
                                <a href="#" class="sidebar-link">Forgot Password</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                </ul>
            </div>
        </aside>
        
        <div class="main">
            <nav class="navbar navbar-expand px-3 border-bottom">
                <button class="btn" id="sidebar-toggle" type="button">
                    <span class="navbar-toggler-icon"></span>
                </button>
               
                
                                <a href="eLibrary" class="sidebar-link" id="Nav" >Home</a>
                            
                         
                                <a href="Home" class="sidebar-link"id="Nav">Librarian</a>
                            
                            
                                <a href="AddBook" class="sidebar-link"id="Nav">Add Book</a>
                           
                                <a href="showbook" class="sidebar-link"id="Nav">view Book</a>
                            
                                <a href="Issuebook" class="sidebar-link"id="Nav">Issue Book</a>
                            
                                <a href="ShowIssuebook" class="sidebar-link"id="Nav">View Issued Book</a>
                            
                                <a href="Return_Book" class="sidebar-link"id="Nav">Return Book</a>
                          
                
             
                
                <div class="navbar-collapse navbar">
                    <ul class="navbar-nav">
                  <li> <a href="#" class="theme-toggle">
                <i class="fa-regular fa-moon"></i>
                <i class="fa-regular fa-sun"></i>
            </a></li>
                        <li class="nav-item dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="nav-icon pe-md-0">
                                <img src="https://github.com/codzsword/bootstrap-admin-dashboard/blob/main/image/profile.jpg?raw=true" class="avatar img-fluid rounded" alt="">
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a href="#" class="dropdown-item">Profile</a>
                                <a href="#" class="dropdown-item">Setting</a>
                         <button class="logout-btn" onclick="logout()" class="dropdown-item">
    	                           Logout <i class="fas fa-sign-out-alt"></i>
								</button>
                              
                              
                              
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
           
                
          

    
 
   
