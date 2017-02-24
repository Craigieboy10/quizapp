  <!--refactored to prevent changing multiple files-->

<nav class="navbar navbar-toggleable-md navbar-inverse bg-primary fixed-top">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="/2016-agileteam1">
    <img src="src/University_of_Dundee_logo.svg.png"height="25px"width="20px" style="position:relative;bottom:5px;"> 
    CraigMC</a>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <%
                if (staffLogin != null) {%>

            <%    if (staffLogin.getLoggedIn()) {
            %>
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/AccountProfile">
                    <span class="ion-person" aria-hidden="true"></span> My Profile</a>
            </li>
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/LogoutStaff">
                    <span class="ion-log-out" aria-hidden="true"></span> Logout</a>
            </li>  
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/AddQuiz">
                    <span class="ion-plus-round" aria-hidden="true"></span> Add Quiz</a>
            </li>  

            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/SelectModule">
                    <span class="ion-search" aria-hidden="true"></span> View Modules/Quizzes</a>
            </li>
            
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/ViewStaffQuizzes">
                    <span class="ion-heart" aria-hidden="true"></span> View My Quizzes</a>
            </li>
            <%  }
            } else {
                if (studentLogin != null) {
                    if (studentLogin.getLoggedIn()) { %>  
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/AccountProfile">
                    <span class="ion-person" aria-hidden="true"></span> My Profile</a>
            </li>
            <li class="nav-item display-5" >
                <a class="nav-link" href="/2016-agileteam1/LogoutStudent">
                    <span class="ion-log-out" aria-hidden="true"></span> Logout</a>
            </li>
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/ViewQuizzes">
                    <span class="ion-search" aria-hidden="true"></span> View Quizzes</a>
            </li>
            <%}
            } else {%>

            <li class="nav-item display-5">
                <a class="nav-link " href="/2016-agileteam1/CreateAccount">
                    <span class="ion-person-add" aria-hidden="true"></span> Create Account</a>
            </li>
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/StudentLogin">
                    <span class="ion-ios-glasses-outline" aria-hidden="true"></span> Login As Student</a>
            </li>
            <li class="nav-item display-5">
                <a class="nav-link" href="/2016-agileteam1/StaffLogin">
                    <span class="ion-ios-book-outline" aria-hidden="true"></span> Login As Staff</a>

            </li>
            <%}
                }
            %>
            
        </ul>
    </div>
</nav>
            
            <br>
            <br>
            <br>