

</div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
   <script>
        const sidebarToggle = document.querySelector("#sidebar-toggle");
        sidebarToggle.addEventListener("click",function(){
            document.querySelector("#sidebar").classList.toggle("collapsed");
        });

        document.querySelector(".theme-toggle").addEventListener("click",() => {
            toggleLocalStorage();
            toggleRootClass();
        });

        function toggleRootClass(){
            const current = document.documentElement.getAttribute('data-bs-theme');
            const inverted = current == 'dark' ? 'light' : 'dark';
            document.documentElement.setAttribute('data-bs-theme',inverted);
        }

        function toggleLocalStorage(){
            if(isLight()){
                localStorage.removeItem("light");
            }else{
                localStorage.setItem("light","set");
            }
        }

        function isLight(){
            return localStorage.getItem("light");
        }

        if(isLight()){
            toggleRootClass();
        }
        
        
        function IssueBook(){
        	  alert("Issue Book Conform .");
        }
        
      
        function openPopup() {
            document.getElementById("popup").style.display = "block";
        }

        function closePopup() {
            document.getElementById("popup").style.display = "none";
        }
    
        
        function logout() {
            // Clear any authentication tokens or session data
            // For example, you might clear localStorage or sessionStorage
            localStorage.removeItem('authToken');

            // Redirect the user to the home page
            window.location.href = 'eLibrary'; // Replace 'home.html' with your actual home page URL
            
            // Replace entire browsing history with home page to prevent going back to authenticated pages
            window.history.replaceState(null, '', 'eLibrary'); // Replace 'home.html' with your actual home page URL
        }






    </script>
  
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>