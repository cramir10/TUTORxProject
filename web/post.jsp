<%-- 
    Document   : post
    Created on : Dec 9, 2019, 8:47:18 AM
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
<meta name="csrf-token" content="0MPFesgM6qxZMEj/5Z0/dykMxYrj3/6hph7yTFgmj/m2NJk9LMJbfxOF3fXOb1gxgSXzOReEIAyatUT98YzZCw==" />
</head>
<body>

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<header>
  <a href="tutorSubject.jsp">Back</a>
    Hey <a href="tutorHomepage.jsp">Chris Lopez</a>!
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
            
        </tr>
        <tr>
            <td><a href="studentPost.jsp">ITIS 1212</a></td>
            <td>December 9th, 2019 00:02
        </tr>
    </tbody>
  </table>
</div>

<!--<a href="/subjects/8/edit">Edit</a> |-->
<a href="tutorPost.jsp">New Post</a>


</body>
</html>