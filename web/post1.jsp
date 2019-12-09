<%-- 
    Document   : post1
    Created on : Dec 9, 2019, 9:09:04 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>TUTORx</title>
   <link rel="stylesheet" href="subject.css">
  <script src="/assets/application-44a23e31dc29734b077bef1c073d3c73.js" data-turbolinks-track="true"></script>
  <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="RpbLpPsTKgO8npbvXzWf404RNmBj12xrh23LeKxx6eQgYZfjH92b0PYrA+V0x/il5jgA05eMssa7xn3JBdu/Fg==" />
</head>
<body>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<header>
  <a href="tutorSubject.jsp">Back</a>
    Hey <a href="tutorProfile.jsp">Shrav Rajan</a>!
    <a rel="nofollow" data-method="delete" href="Homepage.jsp">Logout</a>
</header> 

<div class="container">
  <h1 class="show">Computer Science</h1>

  <p>See if any of the following offers or requests match what you need. If not, make a new post if you are logged in :-)</p>

  <table class="table table-bordered table-striped table-hover">
    <thead>
      <tr>
        <th class="text-center col-lg-6 col-md-6 col-sm-6 col-xs-6">Tutoring Offers</th>
        <th class="text-center col-lg-6 col-md-6 col-sm-6 col-xs-6">Created At</th>
      </tr>
    </thead>

    <tbody>
        <tr>
            <td><a href="studentPost.jsp">ITIS 1212</a></td>
            <td>November 28th, 2019 02:01
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
            <td><a href="#">ITIS 1213</a></td>
            <td>December 9th, 2019 14:08
              <a href="tutorNewPost.jsp">Edit Post</a>
              <a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="post.jsp">Destroy Post</a></td>
        </tr>
    </tbody>
  </table>

  <table class="table table-bordered table-striped table-hover">
    <thead>
      <tr>
        <th class="text-center col-lg-6 col-md-6 col-sm-6 col-xs-6">Tutoring Requests</th>
        <th class="text-center col-lg-6 col-md-6 col-sm-6 col-xs-6">Created At</th>
      </tr>
    </thead>

    <tbody>
        <tr>
        </tr>
        <tr>
            <td><a href="studentPost.jsp">ITIS 1212</a></td>
            <td>November 29th, 2019 17:17
        </tr>
       
        <tr>
        </tr>
    </tbody>
  </table>
</div>

<!--<a href="/subjects/8/edit">Edit</a> |-->
<a href="post.jsp">New Post</a>


</body>
</html>