
      <jsp:include page="commancode.jsp"></jsp:include>

<<style>
<!--
.close:hover {
    color: black;
    cursor:pointer;
}
    
    .popup{
    	color: red;
    }
-->
</style>
            <div class="container">
                <h1 class="mb-4">Issue Book's</h1>
                <form action="AddIssuebook">

        <div class="form-group">
            <label for="cellno">Book Cellno</label>
            <input type="text" class="form-control" name="cellno" id="cellno" placeholder="C-5">
            
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

        <div class="form-group">
            <label for="studentid">Student ID</label>
            <input type="text" class="form-control" name="studentid" id="studentid" placeholder="Enter Student ID">
        </div>

        <div class="form-group">
            <label for="studentname">Student Name</label>
            <input type="text" class="form-control" name="studentname" id="studentname" placeholder="Student Name">
        </div>

        <div class="form-group">
            <label for="studentmobile">Student Mobile</label>
            <input type="tel" class="form-control" name="studentmobile" id="studentmobile" pattern="[0-9]+" placeholder="Mobile No">
        </div>

        <div class="form-group">
            <label for="date">Issued Date</label>
            <input type="date" class="form-control" name="date" id="date">
        </div><br/>

        <button onclick="IssueBook()" class="btn btn-primary btn-block">Issue Book</button>
            </form>
            </div>
           <jsp:include page="commancode2.jsp"></jsp:include>  
            