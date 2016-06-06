<%@ page language="java" import="Metier.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam</title>
 <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
    font-family: Open Sans;
    text-align:justify;
    	
}

button,
.button {
  display: inline-block;
  margin: 0.5rem;
  padding: 0.75rem 1.0rem;
  border: none;
  border-radius: 0.15rem;
  outline: none;
  background-color: #00a2ff;
  color: white;
  font-family: Calibri;
  font-size: 15px;
  font-weight: 300;
  line-height: 0.8rem;
  text-decoration: none;
  cursor: pointer;
  -webkit-transition: all 150ms ease-out;
  transition: all 150ms ease-out;
}
button:focus, button:hover,
.button:focus,
.button:hover {
  background-color: #ff7359;
  box-shadow: 0 0 0 0.1875rem white, 0 0 0 0.375rem #ff7359;
}
button:active,
.button:active {
  background-color: #f25e43;
  box-shadow: 0 0 0 0.1875rem #f25e43, 0 0 0 0.375rem #f25e43;
  -webkit-transition-duration: 75ms;
          transition-duration: 75ms;
}
button.outline,
.button.outline {
  border: 0.1875rem solid tomato;
  background-color: transparent;
  color: tomato;
}
button.outline:focus, button.outline:hover,
.button.outline:focus,
.button.outline:hover {
  border-color: #ff7359;
  color: #ff7359;
}
button.outline:active,
.button.outline:active {
  border-color: #f25e43;
  color: #f25e43;
}

</style>
<script language ="javascript" >
        var tim;       
        var min = '${sessionScope.min}';
        var sec = '${sessionScope.sec}';
       
        
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.submit();  
        	 }  
			
        function examTimer() {
            if (parseInt(sec) >0) {
			
			    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 1000);
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";
				     alert("Time Up");
				     document.questionForm.minute.value=0;
				     document.questionForm.second.value=0;
				     document.questionForm.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 1000);
                }
               
            }
        }
    </script>

</head><br/>


<body onload="examTimer()">

<div style="position:absolute;left:50px;top:20px">
<%
  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();

%>
Current Question ${sessionScope.quest.questionNumber+1} / ${sessionScope.totalNumberOfQuizQuestions}
</div>

<div id="showtime" style="position:absolute;left:800px;top:20px"></div>

 <div style="position:absolute;width:1000px;padding:25px;
  height: 200px;border: 1px solid green ;left:100px;top:60px">
<span>${sessionScope.quest.question}</span><br/><br/>
<form action="exam" method="post" >
 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
 <input type="radio" name="answer" value="${counter.count}" >${choice}  <br/>
 </c:forEach> <br/> 
 
 <%
   if(currentQuestion > 0)
   {
 %>
 <input type="submit" name="action" value="Previous" />
 <%} %>
 
 <%
   if(currentQuestion < 9)
   {
 %>
 <input type="submit" name="action" value="Next" />
 <%} %>
 
 <input type="submit" name="action" value="Finish Exam" />

 </form>
</div>

</body>



</html>