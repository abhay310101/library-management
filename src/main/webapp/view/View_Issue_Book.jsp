<%@ page import="com.library.Model.Student"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<jsp:include page="commancode.jsp"></jsp:include>  
    
    <div class="container mt-5 table-container">
    <table class="table table-bordered">
     <h1>Issue Book List </h1>
        <thead class="thead-dark">
            <tr>
                <th>Cell No</th>
                <th>Student Id</th>
                <th>Student Name</th>
                <th>Student Mobile</th>
                <th>Date</th>
                <th>Return Status</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Student> list = (List<Student>) request.getAttribute("data");
                for (Student student : list) {
            %>
            <tr>
                <td><%= student.getCellno() %></td>
                <td><%= student.getStudentid() %></td>
                <td><%= student.getStudentname() %></td>
                <td><%= student.getStudentmobile() %></td>
                <td><%= student.getDate() %></td>
                <td><%= student.getReturnStatus() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>
          
         <jsp:include page="commancode2.jsp"></jsp:include>   
            