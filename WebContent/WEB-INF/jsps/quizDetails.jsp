<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
<title>Insert title here</title>
<style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
	
	    font-family: Open Sans;
        text-align:justify;
    

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
    
}
</style>
</head>
<body>
<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <li class='#'><a href='#'><span>Submit a Question</span></a></li>
    <li class=''><a href='#'><span>Feedback</span></a></li>
   <li><a href='#'><span>Contribute</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul>
</div>
<br><br><br>
<h2 align="center" style="text-transform: uppercase;">avant de commencer ${sessionScope.exam} </h2>

<div style="position:absolute;left:500px;top:170px">
<ul style="list-style-type:disc">
 <li>L'Examen contient ${sessionScope.totalNumberOfQuizQuestions} Multipes Choix</li>
 <li>La duree totale de l'examen est ${sessionScope.quizDuration} Minutes</li>
 <li>Vous pouvez finir l'examen quand vous voulez</li>
 <li>Lire attentivement la question avant de repondre</li>
 <li>Vous pouvew changer votre reponse avant de soumettre votre examen</li>
 <li>Bonne Chance .</li>
</ul>  
<br><br><br>
</div>


<div  style="position:absolute;left:800px;top:350px">

<input onclick="location.href='${pageContext.request.contextPath}/exam'" type="submit" class="button" value="Commencer" />

</div>


</body>
</html>