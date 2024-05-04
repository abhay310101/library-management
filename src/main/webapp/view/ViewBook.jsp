
<%@ page import="com.library.Model.Book"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<jsp:include page="commancode.jsp"></jsp:include>
                
                
    
    
    
        <%
    List<Book> list = (List<Book>) request.getAttribute("data");
%>

<form name="myForm">

    <div class="container mt-5 table-container">
        <table class="table table-bordered">
         <h1>View Book List </h1>
            <thead class="thead-dark">
                <tr>
                    <th></th>
                    <th>Cell No</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                    <th>Publisher</th>
                    <th>Quantity</th>
                    <th>Issued Book</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Book abook : list) {
                %>
                <tr>
                    <td><input type="radio" name="cellno" value="<%=abook.getCellno() %>"></td>
                    <td><%=abook.getCellno()%></td>
                    <td><%=abook.getName()%></td>
                    <td><%=abook.getAuthor()%></td>
                    <td><%=abook.getPublisher()%></td>
                    <td><%=abook.getQuantity() %></td>
                    <td><button class="btn btn-primary" onclick="editbook()">Edit</button></td>
                    <td><button class="btn btn-danger" onclick="deletebooks()">Delete</button></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
     </form>   
    
    <script type="text/javascript">
    function deletebooks() {
        var selectedId = document.querySelector('input[name="cellno"]:checked');
        if (!selectedId) {
            alert("Please select a Book Cell Number to delete.");
            return;
        }
        alert("Deleting Book with cellno: " + selectedId.value);
        document.myForm.action = "deletebook";
        document.myForm.submit();
    }

    function editbook() {
        var selectedId = document.querySelector('input[name="cellno"]:checked');
        if (!selectedId) {
            alert("Please select a Book cell Number to edit.");
            return;
        }
        alert("Editing Book with cellno: " + selectedId.value);
        document.myForm.action = "editbook";
        document.myForm.submit();
    }
</script>
          <jsp:include page="commancode2.jsp"></jsp:include>
            
            