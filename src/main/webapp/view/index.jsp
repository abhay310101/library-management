



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">




    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Title Here</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
        
<style>

body {
    background-image: url("https://th.bing.com/th/id/OIP.tZeZBmhmKy6xiM-GJo8s3gHaEK?pid=ImgDet&w=207&h=116&c=7&dpr=1.3");
    background-size: cover;
    margin: 20px; /* Adjust the margin value as needed */
}

        
        .form-container {
        	color:orange;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
            padding: 30px;
            margin-top: 50px;
            backdrop-filter: blur(10px); /* Adjust the blur value as needed */
    		background-color: rgba(255, 255, 255, 0.1); 
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
        background-color: ; }
    </style>
</head>
<body>


<!--  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-9">
                <a class="navbar-brand mb-0 h1" href="your-url">Home</a>
                <a class="navbar-brand mb-0 h1" href="your-url">Admin</a>
                <a class="navbar-brand mb-0 h1" href="your-url">Librarian</a>
            </div>
            <div class="col-3">
                <form class="d-flex">
                    <input class="form-control me-1" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </div>
</nav>-->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Home</a>
                 <div class="collapse navbar-collapse" id="EpicNavbar">
                    <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" onclick="toggleForm()" style="cursor:pointer">Admin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" onclick="toggleForm()" style="cursor:pointer">Librarian</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="librarianregistration" style="cursor:pointer">Registrations</a>
                            
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" aria-current="page" style="cursor:pointer" onclick="Footer()">About Us</a>
                        </li>
					</ul>
					</div>
               <!--   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#EpicNavbar" aria-controls="EpicNavbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>-->

               <!--   <div class="collapse navbar-collapse" id="EpicNavbar">
                    <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="NavbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>

                            <ul class="dropdown-menu" aria-labelledby="NavbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>

                                <li><a class="dropdown-item" href="#">Another action</a></li>

                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>-->

                    <form class="d-flex">
                        <input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">

                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        
        
        <div class="jumbotron text-center" style="color:orange; margin-top: 60px;">
        <h1>Wel-come To Pratibha Library Mangement..</h1>
        <p>A World of Knowledge at Your Fingertips.</p>
    </div>



	 <style>
    .container{
      margin-top: 150px;
    }
  </style>
</head>

    
  <div class="container ">
    <div class="row justify-content-center">
      <div class="col-sm-3">
        <div id="EpicCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#EpicCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#EpicCarousel" data-slide-to="1"></li>
            <li data-target="#EpicCarousel" data-slide-to="2"></li> 
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://th.bing.com/th/id/OIG3.GNuyo0p7wXhd0sz136u1?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>First slide</h5>
                <p>Epic image</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG2.xLIt13zl7DAWTJBLqUDZ?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Second slide</h5>
                <p>Epic image 2</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG4.S_HT.vUn5UI9YutpuTjm?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Third slide</h5>
                <p>Epic image 3</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#EpicCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#EpicCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="col-sm-3">
        <div id="EpicCarousel2" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#EpicCarousel2" data-slide-to="0" class="active"></li>
            <li data-target="#EpicCarousel2" data-slide-to="1"></li>
            <li data-target="#EpicCarousel2" data-slide-to="2"></li> 
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://th.bing.com/th/id/OIG3.f20Suv.McJV6kYtvajwa?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>First slide</h5>
                <p>Epic image</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG4.YVrwSrM.H3UfjvEqzu.4?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Second slide</h5>
                <p>Epic image 2</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG2.HfIuJaEiFH1jeQvkxElF?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Third slide</h5>
                <p>Epic image 3</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#EpicCarousel2" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#EpicCarousel2" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

      <div class="col-sm-3">
        <div id="EpicCarousel3" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#EpicCarousel2" data-slide-to="0" class="active"></li>
            <li data-target="#EpicCarousel2" data-slide-to="1"></li>
            <li data-target="#EpicCarousel2" data-slide-to="2"></li> 
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://th.bing.com/th/id/OIG3.RCbSBujzly2YVZuG7uDZ?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>First slide</h5>
                <p>Epic image</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG2.gX3aoohdhAzhl48ykscV?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Second slide</h5>
                <p>Epic image 2</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://th.bing.com/th/id/OIG2.mb6h9sx699HpiM4JNHgj?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" class="d-block w-100" />
              <div class="carousel-caption d-none d-md-block">
                <h5>Third slide</h5>
                <p>Epic image 3</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#EpicCarousel3" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#EpicCarousel3" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>
	

    <!--  <h2 style="text-align:center; color:orange; margin-top: 50px;">Wel-come To Library Management</h2>-->
    
    
    
    
    
    
    
    
    
    
    
    

    <div class="container1 mt-5 " id="formContainer">
        <div class="row">
            <div class="col-md-6">
               
                    <div class="card-body">
                    <div class="form-container">
                        <h1 class="card-title">Admin Login</h1>
                        <form id="admin-login-form" action="adminlogin" method="post">
                            <div class="mb-3">
                                <label for="username" class="form-label">Email address</label>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Email@123" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            </div>
        				<div id="admin-error-message" class="alert alert-danger" style="display: none;"></div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                        </div>
                    
                </div>
            </div>
            <div class="col-md-6">
                
                    <div class="card-body">
                        <div class="form-container" id="formContainer">
                            <h1 class="card-title" style="color:black">Librarian Login</h1>
                            <form style="color:black" id="librarian-login-form" action="Librarianhomepage" method="post">
                            
<%--                               <div th:if="${message}" class="alert alert-danger" role="alert"><span th:text="${message}"></span></div>
 --%>                              
                              
                                
                                
                                
                                
                                <div class="mb-3">
                                    <label for="enteredUsername" class="form-label">Email address</label>
                                    <input type="text" class="form-control" id="enteredUsername" name="enteredUsername" placeholder="Email@123" required>
                                </div>
                                <div class="mb-3">
                                    <label for="enteredPassword" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="enteredPassword" name="enteredPassword" placeholder="Password" required>
                                </div>
                                
                                
                                <%
    								String errorMessage = (String) request.getAttribute("error");
								%>
							<% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    						<div class="alert alert-danger"><%= errorMessage %></div>
							<% } %>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form>
                        </div>
                    </div>
              
            </div>
        </div>
    </div>
    
    

    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    	<hr style="background-color: drak-black; padding: 10px; margin-left: -10px; margin-right: -10px; margin-top: 100px"/>
    	
        <h2 style="text-align:center; color:orange; margin-top: 50px;">"Some language books provide valuable insights into coding techniques, which can enhance your skills."</h2>
    
     <div class="row" data-masonry='{"percentPosition": true }'>
            <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG4.4YE5Sny7n0YgbewQERx1?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Python Book </p>
                        <a href="#" class="btn btn-primary"> Open Python Book </a>
                    </div>

                </div>

            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG1.FgC3T64CF.cjmT7okBVX?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">C Language Book </p>
                        <a href="#" class="btn btn-primary"> C Language Book </a>
                    </div>

                </div>
                </div>
                
                <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG4.PPVDcK8OprBEV7dU2DIM?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Python Book </p>
                        <a href="#" class="btn btn-primary"> Python Book </a>
                    </div>

                </div>
                </div>
                
                
                <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG2.RGIL9KEzBtReAtu50m6w?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Java Book </p>
                        <a href="#" class="btn btn-primary"> Java Book </a>
                    </div>

                </div>
                </div>
                
                <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG4.cQruPQIwiobVzyh.tcW2?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">Java Book </p>
                        <a href="#" class="btn btn-primary"> Java Book </a>
                    </div>

                </div>
                </div>
                
                <div class="col-12 col-md-6 col-lg-2">
                <div class="card">
                    <img src="https://th.bing.com/th/id/OIG2.sfsvkhbucPWSSYbe5u_h?w=270&h=270&c=6&r=0&o=5&dpr=1.3&pid=ImgGn" 
                    class="card-img-top" alt="..."/>

                    <div class="card-body">
                        <h5 class="card-title">Title</h5>
                        <p class="card-text">HTMl Book </p>
                        <a href="#" class="btn btn-primary">Html Book </a>
                    </div>

                </div>
                </div>
                
                
                </div>
            
            
    
    
    
    
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
        
        document.addEventListener("DOMContentLoaded", function() {
            var myCarousel = document.getElementById('EpicCarousel');
            var carousel = new bootstrap.Carousel(myCarousel, {
              interval: 3000 // 3 seconds
            });
          });
          document.addEventListener("DOMContentLoaded", function() {
            var myCarousel2 = document.getElementById('EpicCarousel2');
            var carousel2 = new bootstrap.Carousel(myCarousel2, {
              interval: 3000 // 3 seconds
            });
          });

          document.addEventListener("DOMContentLoaded", function() {
            var myCarousel3 = document.getElementById('EpicCarousel3');
            var carousel3 = new bootstrap.Carousel(myCarousel3, {
              interval: 3000 // 3 seconds
            });
          });
        
          //This blow code are using the scrren scroling 
          
          function toggleForm() {
    var formContainer = document.getElementById('formContainer');
    formContainer.classList.toggle('show'); // Toggle the 'show' class
    
    if (formContainer.classList.contains('show')) {
        // If form container is shown, scroll to it
        window.scrollTo({
            top: formContainer.offsetTop - 50, // Adjusted for admin bar height
            behavior: 'smooth' // Smooth scroll effect
        });
    }
}
          
          //scorrling  for the About us 
          function Footer(){
        	  var Aboutus = document.getElementById('Aboutus');
        	  Aboutus.classList.toggle('show');
        	  
        	  if(Aboutus.classList.contains('show')){
        		  
        		  window.scrollTo({
        			  top: Aboutus.offsetTop -50,
        			  behavior:'smooth'
        		  });
        	  }
          }
     
    </script>
    
    

<footer class="footer mt-5  bg-dark text-white" id="Aboutus">
    <div class="container text-center">
        <p>Library Management System</p>
        <p>Address: 123 Pratibha Main Street, Pune, India</p>
        <p>Email: pratibhalibrary@gmail.com | Phone: +1234567890</p>
        <p>Follow us on <a href="https://twitter.com/library" target="_blank">Twitter</a> | <a href="https://facebook.com/library" target="_blank">Facebook</a></p>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
    
  </body>  

</html>
