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
<body style="background-color:Cornsilk;">

<div class="container-fluid">

<h1 style="color:purple;">Welcome to the Wine Directory!
<img src="https://www.iconspng.com/images/summer-wine/summer-wine.jpg" alt="wine picture" style="width:100px;height:100px;"></h1>
<hr>

<h3 style="color:DarkRed;">Search by Wine Id</h3>

<form action="getWine.do" method="GET">
Wine ID: <input type="text" name="wid" /> <input type="submit"
	value="Show Wine" style="color:DarkRed;" />
</form>
<br>
<hr>
<h4 style="color:DarkRed;">Create New Wine</h4>

<form action="createWine.do" method="POST">
<label for="labelName">Label Name: </label>
<input type="text" name="labelName">
<br>

<!-- <label for="type">Type: </label>
<input type="text" name="type">
<br> -->

<label for="type">Type:</label>
<select name="type" id="type">
<option value="Pinot Noir">Pinot Noir</option>
<option value="Cabernet Sauvignon">Cabernet Sauvignon</option>
<option value="Merlot">Merlot</option>
<option value="Pinot Grigio">Pinot Grigio</option>
<option value="Chardonnay">Chardonnay</option>
<option value="Sauvignon Blanc">Sauvignon Blanc</option>
<option value="Champagne">Champagne</option>

</select>

<!-- <br>
<label for="flavor">Flavor: </label>
<input type="text" name="flavor">
<br> -->

<br>
<label for="flavor">Flavor: </label>
<select name="flavor" id="flavor">
<option value="Sweet" id="flavor">Sweet</option>
<option value="Semi-Sweet" id="flavor">Semi-Sweet</option>
<option value="Medium" id="flavor">Medium</option>
<option value="Semi-Dry" id="flavor">Semi-Dry</option>
<option value="Dry" id="flavor">Dry</option>
<option value="Medium-Body" id="flavor">Medium-Body</option>
<option value="Full-Body" id="flavor">Full-Body</option>
</select>

<br>
<label for="description">Description: </label>
<input type="text" name="description">
<br>
<!-- <br>
<label for="rating">Rating: </label>
<input type="text" name="rating">
<br> -->


<label for="rating">Rating: </label>
<select name="rating" id="rating">
<option value="1.0" id="rating">1.0</option>
<option value="1.5" id="rating">1.5</option>
<option value="1.9" id="rating">1.9</option>
<option value="2.0" id="rating">2.0</option>
<option value="2.5" id="rating">2.5</option>
<option value="2.9" id="rating">2.9</option>
<option value="3.0" id="rating">3.0</option>
<option value="3.5" id="rating">3.5</option>
<option value="3.9" id="rating">3.9</option>
<option value="4.0" id="rating">4.0</option>
<option value="4.5" id="rating">4.5</option>
<option value="4.9" id="rating">4.9</option>
<option value="5.0" id="rating">5.0</option>

</select>
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

 <input type="submit" style="color:DarkRed;">
</form>
<hr>

<h3 style="color:DarkRed;">Search by Wine Name</h3>
<form action="findWineName.do" method="GET">
Wine Name: <input type="text" name="labelName" /> <input type="submit"
	value="Wine Name" style="color:DarkRed;"/>
</form>
<br>
<!-- <a style="color:purple;" href="wineList.do">List of Wines</a> -->

<form action="wineList.do">
<input type="submit" value="List of Wines" style="color:DarkRed;"/>
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
		<br>
</body>
</html>