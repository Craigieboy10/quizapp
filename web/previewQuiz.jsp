<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@include file="header.jsp"%>

  <!--refactored to increase usability and normalize design-->
<title>Quizzes</title>
</head>

<body>
    <%@include file="navbar.jsp"%>
    <div style="margin: 1% 10% 10% 10%">
    <div class="jumbotron">
        

            <h1 class="display-1">Previewing Quiz: </h1>
            <br>
            <div class="col-12 center"><h2></h2></div>
                    <%for (int i = 0; i < quiz.getQuizQuestions().size(); i++) {
                            List quizQuestionList = quiz.getQuizQuestions();
                            List quizQuestionAnswers = quiz.getQuizCAnswers();
                            List quizQuestionInc1Answers = quiz.getQuizI1Answers();
                            List quizQuestionInc2Answers = quiz.getQuizI2Answers();
                            List quizQuestionInc3Answers = quiz.getQuizI3Answers();
                            List quizQuestionID = quiz.getQuizQuestionID();
                            List quizQuestionEx = quiz.getQuizEAnswers();
                            List quizQuestionVideoUrls = quiz.getQuizVideoUrls();
                    %>
            <table class="table table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>
                            <h3 class="display-5">Question: <%=quizQuestionList.get(i)%></h3>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
            <p>Correct Answer: <%=quizQuestionAnswers.get(i)%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
            <p>Incorrect Answer: <%=quizQuestionInc1Answers.get(i)%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>                     
            <p>Incorrect Answer: <%=quizQuestionInc2Answers.get(i)%></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
            <p>Incorrect Answer: <%=quizQuestionInc3Answers.get(i)%></p>

                    </td>
                    </tr>
                    <tr class='bg-primary'>
                        <td>
            <p>Answer Explanation: <%=quizQuestionEx.get(i)%></p>

                        </td>
                    </tr>
                    <tr>
                        <td class="bg-success" style="color: white; text-shadow: 0 0 2px black;">
                            <p style="text-align:center;"><b>Associated Video</b></p>

                        </td>
                    </tr>
                    
                </tbody>
            </table>
            <div style="text-align:center;width:100%;">
                <%if (quizQuestionVideoUrls.get(i)!=null && !quizQuestionVideoUrls.get(i).toString().isEmpty()){%>
                
                <iframe style="width:35vw;height:20vw" width="640" height="360"
                    src="https://www.youtube.com/embed/<%=quizQuestionVideoUrls.get(i)%>" allowfullscreen>
                </iframe> 
                   <%}else{%>
                   <p>No video for this question</p><%}%>
             </div>
            <form action="previewQuiz" method="post"><button type="submit" style="cursor:pointer;" name="quizquestionid" value="<%=quizQuestionID.get(i)%>" class="btn btn-primary">Edit Question</button>

                <input type="hidden" name="quizquestion" value="<%=quizQuestionList.get(i)%>">
                <input type="hidden" name="quizquestionanswer" value="<%=quizQuestionAnswers.get(i)%>">
                <input type="hidden" name="quizquestionincorrect1" value="<%=quizQuestionInc1Answers.get(i)%>">
                <input type="hidden" name="quizquestionincorrect2" value="<%=quizQuestionInc2Answers.get(i)%>">
                <input type="hidden" name="quizquestionincorrect3" value="<%=quizQuestionInc3Answers.get(i)%>">
                <input type="hidden" name="quizExplanation" value="<%=quizQuestionEx.get(i)%>">
                <input type="hidden" name="quizVideoUrl" value="<%=quizQuestionVideoUrls.get(i)%>">
            </form>
            <br>
            <%}%>

        </div>
    
    <%@include file="footer.jsp"%>
    
                            
               

