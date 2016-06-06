<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
<style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}

button,
.button {
  display: inline-block;
  margin: 0.75rem;
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 0.1875rem;
  outline: none;
  background-color: tomato;
  color: white;
  font-family: inherit;
  font-size: 1.125em;
  font-weight: 300;
  line-height: 1.5rem;
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
<title>Votre resultat</title>
</head>
<body>






<div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #324fff; position:absolute;left:350px;top:40px">
<div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #ffd200">
       <span style="font-size:50px; font-weight:bold; font-family:Open Sans;">BULLETIN DE L'EXAMEN</span>
       <br><br>
       <span style="font-size:25px; font-family:Calibri;">NOUS CERTIFIONS QUE :</span>
       <br><br>
       <span style="font-size:30px"><b>${sessionScope.user}</b></span><br/><br/>
       
       
       <span style="font-size:25px;font-family:Calibri;">AVEZ BIEN PASSE SON EXAMEN DE  ${sessionScope.exam}</span> <br/><br/>
       <span style="font-size:25px;font-family:Calibri;">ET CECI LE : ${sessionScope.started}</span>
                          <br/><br/><br/><br/>
       	
       <span style="font-size:30px;font-family:Calibri;">AVEC UN NOMBRE DES QUESTIONS CORRECTES :   ${requestScope.result}</span> <br/><br/>       
      
      
      <span style="font-size:30px;font-family:Calibri;">DECISION DE VALIDATION :</span>
      <span style="font-size:50px;font-family:Calibri;">
      
          <c:if test="${requestScope.result >= 5}">
                <h3 align="center" style="color:green;">VALIDE</h3>
           </c:if>
          <c:if test="${requestScope.result < 5}">
                <h3 align="center" style="color:red;">NON VALIDE</h3>
          </c:if>

      
      </span>
</div>
</div>



<a href="javascript:window.print()" class="button" style="font-size:15px;font-family:Calibri;">Imprimer mon resultat</a>
<br/>
<a href="${pageContext.request.contextPath}" class="button" style="font-size:15px;font-family:Calibri;">Faire un autre examen</a>
<br/>
<a href="${pageContext.request.contextPath}/exam/review" class="button" style="font-size:15px;font-family:Calibri;">  Reviser les reponses  </a>
<br/>
<a href="${pageContext.request.contextPath}" class="button" style="font-size:15px;font-family:Calibri;">Page d'accueil</a>



</body>
</html>