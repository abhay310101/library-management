<%@ page import="com.library.Model.Book"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<jsp:include page="commancode.jsp"></jsp:include>
<% Book abook = (Book) request.getAttribute("Book"); %>
    

    <div class="container mt-5">
        <h1>Update</h1>
        <form action="updatebook" method="post">
            <div class="form-group">
                <label for="cellno">cellno</label><br>
                <input type="text" class="form-control" name="cellno" value="<%= abook.getCellno() %>" placeholder="New cellno"><br>
            </div>
            <div class="form-group">
                <label for="name">Book Name</label><br>
                <input type="text" class="form-control" name="name" value="<%= abook.getName() %>" placeholder="New BookName"><br>
            </div>
            <div class="form-group">
                <label for="author">Author Name</label><br>
                <input type="text" class="form-control" name="author" value="<%= abook.getAuthor() %>" placeholder="New Author"><br>
            </div>
            <div class="form-group">
                <label for="publisher">Publisher</label><br>
                <input type="text" class="form-control" name="publisher" value="<%= abook.getPublisher() %>" placeholder="New Publisher"><br>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label><br>
                <input type="number" class="form-control" name="quantity" value="<%= abook.getQuantity() %>" placeholder="New Quantity"><br>
            </div>
            <input type="submit" class="btn btn-primary" value="Update">
        </form>
    </div>
    <jsp:include page="commancode2.jsp"></jsp:include>