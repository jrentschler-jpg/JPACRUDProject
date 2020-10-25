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
<title>Wine List</title>
</head>
<body>

<div class="container-fluid">

<h1>Welcome to the Wine Directory!</h1>
<hr>
<h3>Search by Wine Id</h3>
<form action="getWine.do" method="GET">
Wine ID: <input type="text" name="wid" /> <input type="submit"
	value="Show Wine" />
</form>
<br>
<hr>
<h4>Create New Wine</h4>

<form action="createWine.do" method="POST">
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
<hr>
<!-- <h4>Delete Wine</h4>

<form action="deletedWine.do" method="GET">
Wine ID: <input type="text" name="id" /> <input type="submit"
	value="Delete Wine" />
</form> -->

<!--  <h4>Update Wine</h4> -->

<!-- <form action="updatedWine.do" method="POST">
Wine ID: <input type="text" name="id" /> <input type="submit"
	value="Update Wine" />
</form>  -->
<h3>Search by Wine Name</h3>
<form action="findWineName.do" method="GET">
Wine Name: <input type="text" name="labelName" /> <input type="submit"
	value="Wine Name" />
</form>
<br>
<a href="wineList.do">List of Wines</a>
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
		<br>
</body>
</html>