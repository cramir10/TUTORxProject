<%-- 
    Document   : tutorNewPost
    Created on : Dec 9, 2019, 9:06:01 AM
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
<meta name="csrf-token" content="YQEBmdYFWDcSVrv0PMPHc+Il6yilxmCykGizevbBREsH9l3eMsvp5FjjLv4XMaA1Sgzdm1Gdvh+swwXLX2sSuQ==" />
</head>
<body>

<h1>New post</h1>

<form class="new_post" id="new_post" action="post1.jsp" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="bWHc46bKI/77N6phHvDn+MFCS/ADQgtbq0hYAbxbFi8LloCkQgSSLbGCP2s1AoC+aWt9Q/cZ1faX4+6wFfFA3Q==" />

  <div class="field">
    <label for="post_title">Title</label><br>
    <input type="text" name="post[title]" id="post_title" />
  </div>
  <div class="field">
    <label for="post_body">Body</label><br>
    <textarea name="post[body]" id="post_body">
</textarea>
  </div>
  <div class="actions">
    <input type="submit" name="commit" value="Create Post" />
  </div>
</form>

<a href="post.jsp">Back</a>


</body>
</html>