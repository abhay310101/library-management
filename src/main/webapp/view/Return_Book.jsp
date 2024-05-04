<jsp:include page="commancode.jsp"></jsp:include>

<div class="container">
     <h1>Return Book </h1>
    <form action="returnBook">
        <div class="mb-3">
            <label for="cellno" class="form-label">Call Number</label>
            <input type="text" id="bookCellInput" name="cellno" class="form-control" placeholder="Enter Call Number" required>
        </div>
        <div class="mb-3">
            <label for="studentid" class="form-label">Student ID</label>
            <input type="text" id="studentIdInput" name="studentid" class="form-control" placeholder="Enter Student ID" required>
        </div>
        
        <button id="returnBtn" type="submit" class="btn btn-primary" onclick="Returnbook()">Return Book</button>
   <div id="successMessage" style="display: none;">Return book successfully</div>
   <div id="errorMessage" style="display: none; color: red;">Please fill in all fields</div>  
    </form>
</div>


<script type="text/javascript">
function Returnbook(){
	  alert("Return Book Successfully. .");
}
    </script>


<jsp:include page="commancode2.jsp"></jsp:include>