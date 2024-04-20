<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyDiary App Homepage</title>
<link rel="stylesheet" href="<c:url value="/resources/styles/style.css"/>">
</head>
<body>
<div class="header">
<div class="first">
<img src="<c:url value="/resources/images/diary.jpg"/>" width="50" height="50">
</div>
<div class="second">MyDiary App</div>

</div>
<br/><br/>
<hr/>
<div class="bodypart">
  <div class="bodypart1">
  <img src="<c:url value="/resources/images/diary.jpg"/>" width="60%" height="60%">
  
  </div>
  <div class="bodypart2">
   <h1>REGISTRATION FORM</h1><br/><br/>
   <form action="./saveuser" method="post">
   <label>username</label> <input type="text" name="username" class="formcontrol"><br/><br/>
   <label>password</label><input type="password" name="password" class="formcontrol"><br/><br/>
   <button type="sumbit">REGISTER</button>
   </form>
   <br/><br/>
   Existing User?<a href="./home">Login</a> here  
  </div>

</div>
</body>
</html>