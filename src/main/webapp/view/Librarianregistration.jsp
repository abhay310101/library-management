<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Librarian</title>

<style type="text/css">

body{
background-image: url("https://designer.microsoft.com/designer-gpt-welcome-tiles/8.jpeg");


}
/* Popup container */
.popup {
    display: block;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 50%;
    padding: 20px;
    background-color: #f44336; /* Red background color for danger */
    color: white;
    text-align: center;
}

/* Close button */
.close {
    color: white;
    font-size: 20px;
    position: absolute;
    top: 10px;
    right: 20px;
    cursor: pointer;
}

.close:hover {
    color: black;
}
.container {
    color: orange;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    padding: 3%;
    margin-top: 5%;
    margin-left: auto;
    margin-right: auto;
    max-width: 50%; /* Adjust the maximum width as needed */
    backdrop-filter: blur(10px);
    background-color: rgba(255, 255, 255, 0.1);
}
.Size {
    margin-right: 20%;
    margin-left: 20%;
    margin-top: 5%;
    
    padding-left: 10%;
    padding-right: 10%;
    padding-bottom: 10%;
}

</style>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	
	
	<script>
    function openPopup() {
        document.getElementById().style.display = "block";
    }

    function closePopup(popup) {
        document.getElementById().style.display = "none";
    }
</script>
	
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Home</a>
                 <div class="collapse navbar-collapse" id="EpicNavbar">
                    <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" onclick="toggleForm()" style="cursor:pointer" href="eLibrary">Admin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" onclick="toggleForm()" style="cursor:pointer" href="eLibrary">Librarian</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="librarianregistration" style="cursor:pointer" >Registrations</a>
                            
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" aria-current="page" style="cursor:pointer" onclick="Footer()" href="eLibrary">About Us</a>
                        </li>
					</ul>
					</div>


<form class="d-flex">
                        <input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">

                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
	
<div class="Size">
	<div class="container ">
		<h1 style="color:White;">Registrations</h1>
		<form action="FillAddlibrarianFroms" method="post">
		
			<div class="form-group">
				
			
				<label for="id">Id/SrNumber</label> <input type="number"
					class="form-control" id="id" name="id" placeholder="Id/srNumber" required="required">
			</div>
			<%
    String message = (String) request.getAttribute("message");
%>

<% if (message != null && !message.isEmpty()) { %>
    <div id="popup" class="popup">
        <div class="popup-content">
            <span class="close" onclick="closePopup()">&times;</span>
            <p><%= message %></p>
        </div>
    </div>
<% } %>

<script>
    function closePopup() {
        document.getElementById("popup").style.display = "none";
    }
</script>
			
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name" placeholder="Name">
			</div>
			<div class="form-group">
				<label for="email">Email Address</label> <input type="email"
					class="form-control" id="email" name="email_address"
					placeholder="Email">
			</div>
				<%
    String message1 = (String) request.getAttribute("message1");
%>

<% if (message1 != null && !message1.isEmpty()) { %>
    <div id="popup" class="popup">
        <div class="popup-content">
            <span class="close" onclick="closePopup()">&times;</span>
            <p><%= message1 %></p>
        </div>
    </div>
<% } %>
	<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="Password">
			</div>
			<div class="form-group">
				<label for="mobile">Mobile Number</label> <input type="tel"
					class="form-control" id="mobile" name="mobile_number"
					placeholder="Mobile">
			</div>

		
			<button type="submit" class="btn btn-primary" onclick="openPopup()">Submit</button>
		</form>
	</div>
	</div>

	<!-- Bootstrap JS and jQuery (Optional) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script>
    function openPopup() {
        document.getElementById("popup").style.display = "block";
    }

    function closePopup() {
        document.getElementById("popup").style.display = "none";
    }
</script>
</body>
</html>

