<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">   
      
    <style type="text/css">
    
    
body {


	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
@import url(http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
.button {
    background-color: #ff0000; /* Red */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button1 {width: 250px;}
.button2 {width: 50%;}
.button3 {width: 100%;}

.button, .button:hover, .button:active {
	outline: 0 none;
	text-decoration: none;
        color: #fff;
}

.username {
	background-color: #2ecc71;
	box-shadow: 0px 3px 0px 0px #239a55;
}


figure.snip1113 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  min-width: 220px;
  max-width: 310px;
  width: 100%;
  background: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}

figure.snip1113 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

figure.snip1113 img {
  max-width: 65%;
  margin: 40px auto;
  display: block;
  position: relative;
  border: 3px solid #666666;
  padding: 15px 15px 85px 15px;
  -webkit-transform: translate(0, 0);
  transform: translate(0, 0);
}

figure.snip1113 figcaption {
  position: absolute;
  height: 120px;
  bottom: 0px;
  left: 0;
  right: 0;
  display: block;
}

figure.snip1113 h3 {
  background-color: #ffffff;
  color: #000000;
  font-size: 1.7em;
  width: 100%;
  padding: 5px 12px;
  margin: 0;
  text-transform: uppercase;
  font-weight: 400;
}

figure.snip1113 h3 span {
  font-weight: 800;
}

figure.snip1113 h4 {
  margin: 0;
  text-transform: uppercase;
  letter-spacing: -1px;
  opacity: 0.6;
  font-size: 1.1em;
}

figure.snip1113.blue img {
  border-color: #2472a4;
}

figure.snip1113.blue h3,
figure.snip1113.blue h4 {
  color: #2472a4;
}

figure.snip1113.red img {
  border-color: #ab3326;
}

figure.snip1113.red h3,
figure.snip1113.red h4 {
  color: #ab3326;
}

figure.snip1113.yellow img {
  border-color: #e08e0b;
}

figure.snip1113.yellow h3,
figure.snip1113.yellow h4 {
  color: #e08e0b;
}

figure.snip1113.green img {
  border-color: #229955;
}

figure.snip1113.green h3,
figure.snip1113.green h4 {
  color: #229955;
}

figure.snip1113.orange img {
  border-color: #d67118;
}

figure.snip1113.orange h3,
figure.snip1113.orange h4 {
  color: #d67118;
}

figure.snip1113.navy img {
  border-color: #2b3c4e;
}

figure.snip1113.navy h3,
figure.snip1113.navy h4 {
  color: #2b3c4e;
}

</style>
  
   <title>Exam Front End</title>
</head>
<body>
<link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,400,100,300,600,700' rel='stylesheet' type='text/css'>  
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <li class='#'><a href='#'><span>Submit a Question</span></a></li>
   <li class='#'><a href='#'><span>Feedback</span></a></li>
   <li><a href='#'><span>Contribute</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul>
</div>




<c:if test='${not empty sessionScope.user}'>




<div class="information message">
  <h2>Bienvenue ! On vous souhaite un bon courage</h2>
	<p>Votre Bulletin sera envoyé à votre mail : ${sessionScope.user}</p>
</div>


<br/>

</div>

</c:if>



<figure class="snip1113 red"><a href="takeExam?test=java">
  <img src="${pageContext.request.contextPath}/images/java.png" alt="pr-sample1" />
  <figcaption>
    <h3>Exam <span>Java</span></h3>
    <h4> 
      40 min
    </h4>
  </figcaption></a>
</figure>
<figure class="snip1113 blue hover"><a href="takeExam?test=javascript">
<img src="${pageContext.request.contextPath}/images/javascript.png" alt="pr-sample3" />
  <figcaption>
    <h3>Exam <span>Javascript</span></h3>
    <h4> 
      45 min
    </h4>
  </figcaption></a>
</figure>
<figure class="snip1113"><a href="takeExam?test=sql">
<img src="${pageContext.request.contextPath}/images/sql-logo.png" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>SQL</span></h3>
    <h4>
      50 min
    </h4>
  </figcaption></a>
</figure>
<figure class="snip1113"><a href="takeExam?test=python">
<img src="${pageContext.request.contextPath}/images/python.jpg" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>Python</span></h3>
    <h4>
      50 min
    </h4>
  </figcaption></a>
</figure>

<figure class="snip1113"><a href="takeExam?test=css">
<img src="${pageContext.request.contextPath}/images/css.jpg" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>CSS</span></h3>
    <h4>
      50 min
    </h4>
  </figcaption></a>
</figure>

<figure class="snip1113"><a href="takeExam?test=php">
<img src="${pageContext.request.contextPath}/images/php-logo.jpg" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>Php</span></h3>
    <h4>
      50 min
    </h4>
  </figcaption></a>
</figure>

<figure class="snip1113"><a href="takeExam?test=linux">
<img src="${pageContext.request.contextPath}/images/logo-linux.png" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>Linux</span></h3>
    <h4>
      60 min
    </h4>
  </figcaption></a>
</figure>

<figure class="snip1113"><a href="takeExam?test=mongodb">
<img src="${pageContext.request.contextPath}/images/mongodb_logo.png" alt="pr-sample9" />
  <figcaption>
    <h3>Exam  <span>MongoDB</span></h3>
    <h4>
      80 min
    </h4>
  </figcaption></a>
</figure>

<center>

<button class="button button1" href='${pageContext.request.contextPath}/logout'>
<a href='${pageContext.request.contextPath}/logout' style="color:white; ">Se Deconnecter</a>
</button>
</center>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>
