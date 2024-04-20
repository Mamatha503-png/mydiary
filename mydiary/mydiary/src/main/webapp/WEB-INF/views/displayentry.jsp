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
<br/><br/>
 <h1>welcome <span style="color:SteelBlue">${user.username}</span></h1>
 <a href="./signout" style="color:red; float:right ; font-size:30px">Signout</a>
<div class="bodypart">
  <div class="bodypart1">
  <img src="<c:url value="/resources/images/diary.jpg"/>" width="60%" height="60%">
   
  </div>
  <div class="bodypart2">
   <h1>VIEW ENTRY</h1><br/><br/>
   <table>
   <tr><td>Date:</td><td> ${entry.entrydate}</td></tr>
   <tr><td>Description:</td><td>${entry.description}</td></tr>
   </table>
  
   <br/><br/><br/>
  <a href="userhome"><button type="button">BACK TO HOME</button></a> 
   
   </form>
  
  </div>

</div>
</body>
</html>