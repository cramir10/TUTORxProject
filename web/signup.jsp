<%-- 
    Document   : Register
    Created on : Nov 28, 2019, 9:23:55 PM
    Author     : Owner
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>TUTORx: Sign up</title>
  <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'><link rel="stylesheet" href="style.css">
</head>

<body class="register">

  <form action="tutorSubject.jsp" name="loginForm" method="POST"  class="form-signin"> 
    <h2 class="form-signin-heading">Please sign up</h2>
    <div class="field">
    <input type="text" class="form-control" name="fullName" placeholder="Full Name" required="" autofocus="" />
    </div>
    <div class="field">
     <input type="radio" name="rank" value="Freshman"  id="user_year_freshman" /> Freshman<br>
    <input type="radio" name="rank" value="Sophomore"  id="user_year_sophomore" /> Sophomore<br>
    <input type="radio" name="rank" value="Junior" id="user_year_junior" /> Junior<br>
    <input type="radio" name="rank" value="Senior"  id="user_year_senior" /> Senior<br>
    </div>
    <div class="field">
     <input type="text" class="form-control" name="email" placeholder="Email Address" required="" autofocus="" />
     <div class="field">
    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
    <div>
        <div class="field">
    <input type="radio" name="userType" value="Tutor"  id="user_category_tutor" /> Tutor<br>
    <input type="radio" name="userType" value="Student" id="user_category_student" /> Student<br>
        </div>
        <div class="field">
    <label for="userBio">Bio</label><br>
    <textarea name="userBio" id="userBio" rows="4" cols="45" class="form-control">
</textarea>
        </div>
        <button class="btn btn-lg btn-primary btn-block" style="background-color: #046A38; border-color: #046A38" type="submit" value="Sign up" name="signup">Sign up</button>   
   <br><br>
<a href="Homepage.jsp" style="text-align: center;">Back to Homepage</a>
</form>
   
</div>
 

</body>
</html>
