
<jsp:include page="commancode.jsp"></jsp:include>
            <div class="container">
                <h1 class="mb-4">Add Book'S</h1>
                <form id="addBookForm" action="Addbook" method="post">
                    <div class="form-group">
                        <label for="cellno">Cell Number</label>
                        <input type="text" class="form-control" id="cellno" name="cellno" placeholder="D-3" required>
                    </div>
                    <div class="form-group">
                        <label for="bookName">Book Name</label>
                        <input type="text" class="form-control" id="bookName" name="name" placeholder="Book Name" required>
                    </div>
                    <div class="form-group">
                        <label for="author">Author</label>
                        <input type="text" class="form-control" id="author" name="author" placeholder="Author Name" required>
                    </div>
                    <div class="form-group">
                        <label for="publisher">Publisher</label>
                        <input type="text" class="form-control" id="publisher" name="publisher" placeholder="Publication" required>
                    </div>
                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" id="quantity" name="quantity" required>
                    </div><br/>
                    <button type="submit" class="btn btn-primary">Save Book</button>
                </form>
            </div>
            
           <jsp:include page="commancode2.jsp"></jsp:include>