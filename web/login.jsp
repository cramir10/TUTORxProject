<%-- 
    Document   : login
    Created on : Nov 9, 2019, 3:00:29 PM
    Author     : Owner
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>TUTORx: Login</title>
  <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
  <link rel="stylesheet" href="style.css">

</head>
<body class="login">
<!-- partial:index.partial.html -->
<div class="wrapper">
      <form action="tutorSubject.jsp" name="loginForm" method="POST"  class="form-signin">  
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      
      <button class="btn btn-lg btn-primary btn-block" style="background-color: #046A38; border-color: #046A38" value="login" name="login" type="submit">Login</button>   
                 <br>
                 <br>
                  <a href="signup.jsp" name="signup" style="text-align: center;">New User? Click here to register</a>
                 <br>
                  <a href="Homepage.jsp" style="text-align: center;">Back to Homepage</a>
    </form>
  </div>
<!-- partial -->

  
</body>
</html>