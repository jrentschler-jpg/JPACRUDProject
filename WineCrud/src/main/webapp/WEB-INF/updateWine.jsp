<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Update Wine</title>
</head>
<body>
<div class="container-fluid">
<h2>Update Selected Wine:</h2>

<form action="updatedWine.do" method="GET">
<label for="labelName">Label Name: </label>
<input type="text" name="labelName">
<br>
<label for="type">Type: </label>
<input type="text" name="type">
<br>
<label for="flavor">Flavor: </label>
<input type="text" name="flavor">
<br>
<label for="description">Description: </label>
<input type="text" name="description">
<br>
<label for="rating">Rating: </label>
<input type="text" name="rating">
<br>
<label for="cost">Cost: </label>
<input type="text" name="cost">
<br>
<label for="vineyard">Vineyard: </label>
<input type="text" name="vineyard">
<br>
<label for="yearProduced">Year Produced: </label>
<input type="text" name="yearProduced">
<br>

 <input type="submit">
</form>







</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>