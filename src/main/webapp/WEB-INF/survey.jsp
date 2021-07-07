<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Survey Index</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/survey.css">
<script type="text/javascript" src="js/app.js"></script>
</head>

<body>
	
	<div class="container">
       <form action="/result" method="POST">
           <div class="form-group">
               <label for="your name">Your Name:</label>
               <input type="text" class="form-control" name='name' id="your name">
           </div>

           <div class="form-group">
               <label for="dojo location">Dojo Location:</label>
               <select class="form-control" id="dojo  location" name='location'>
                   <option>San Jose</option>
                   <option>Seattle</option>
                   <option>Chicago</option>
               </select>
           </div>

           <div class="form-group">
           		<label for="dojo location">Favorite Language:</label> 
               <select class="form-control" id="dojo  location" name='language'>
                   <option>Java</option>
                   <option>Mern</option>
                   <option>Python</option>
               </select>
           </div>
           
           <div class="form-group">
               <p>Comment (optional):</p>
               <textarea name="comment"></textarea>
           </div>

           <div class="form-group">
               <input type="Submit" value="Submit">
           </div>
       </form>
	</div>

</body>
</html>