<%-- 
    Document   : tutorEdit
    Created on : Dec 9, 2019, 8:07:54 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>TUTORx</title>
  <link rel="stylesheet" href="subject.css">
  <link rel="stylesheet" media="all" href="/assets/application-683458745054cc4340682f0fa40c5f80.css" data-turbolinks-track="true" />
  <script src="/assets/application-44a23e31dc29734b077bef1c073d3c73.js" data-turbolinks-track="true"></script>
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="2O2pOSKzfrU6jIALsF4z075NOWtAkYpYTKmTFtyoWzKXR9MNnydUeNJbXuXfflcPy14oj5RciSZTx8khujWCnw==" />
</head>
<body>

<h1>Editing user</h1>

<form class="edit_user" id="edit_user_6" action="tutorProfile.jsp" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="patch" /><input type="hidden" name="authenticity_token" value="bN9A5WX9Kz/UvVRFTaYRIlQnt7NtIjlB2vWN+NvnqsYjdTrR2GkB8jxqiqsihnX+ITSmV7nvOj/Fm9fPvXpzaw==" />
  <div class="field">
    <label for="user_name">Name</label><br>
    <input type="text" value="Shrav Rajan" name="user[name]" id="user_name" />
  </div>
  <div class="field">
    <input type="radio" value="Freshman" name="user[year]" id="user_year_freshman" />
    <label for="user_year">Freshman</label>
    <input type="radio" value="Sophomore" checked="checked" name="user[year]" id="user_year_sophomore" />
    <label for="user_year">Sophomore</label>
    <input type="radio" value="Junior" name="user[year]" id="user_year_junior" />
    <label for="user_year">Junior</label>
    <input type="radio" value="Senior" name="user[year]" id="user_year_senior" />
    <label for="user_year">Senior</label>
  </div>
  <div class="field">
    <label for="user_email">Email</label><br>
    <input type="text" value="srajan3@uncc.edu" name="user[email]" id="user_email" />
  </div>
  <div class="field">
    <label for="user_password">Password</label><br>
    <input type="password" name="user[password]" id="user_password" />
  </div>
  <div class="field">
    <input type="radio" value="Tutor" checked="checked" name="user[category]" id="user_category_tutor" />
    <label for="user_category">Tutor</label>
    <input type="radio" value="Tutee" name="user[category]" id="user_category_tutee" />
    <label for="user_category">Tutee</label>
  </div>
  <div class="field">
    <label for="user_bio">Bio</label><br>
    <textarea name="user[bio]" id="user_bio">
Computer Science major seeking to use knowledge and programming experience in the role of TUTORx tutor. 
I believe I can teach hard topics in a fun and easy way. 
</textarea>
  </div>
  <div class="actions">
    <input type="submit" name="commit" value="Update User" />
  </div>
</form>

<a href="tutorProfile.jsp">Show</a> |
<a href="tutorHomepage.jsp">Back</a>


</body>
</html>