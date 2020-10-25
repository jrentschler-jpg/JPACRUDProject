<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Updated Wine</title>
</head>
<body>

	<div class="container-fluid">
		<h1>Updated Wine: <img src="https://www.iconspng.com/images/summer-wine/summer-wine.jpg" alt="wine picture" style="width:100px;height:100px;"></h1>
		<h2>Label Name: ${wine.labelName}</h2>
		<table class="table table-striped table-hover">
			
			<tr>
				<td><strong>Wine ID:</strong></td> 
				<td>${wine.id}</td>
			
			</tr>
			<tr>
				<td><strong>Type:</strong></td>
				<td>${wine.type}</td>
			</tr>
			<tr>
				<td><strong>Year Produced:</strong></td>
				<td>${wine.yearProduced}</td>
			</tr>
			<tr>
				<td><strong>Flavor:</strong></td>
				<td>${wine.flavor}</td>
			</tr>
			<tr>
				<td><strong>Description:</strong></td>
				<td>${wine.description}</td>
			</tr>
			<tr>
				<td><strong>Rating:</strong></td>
				<td>${wine.rating}</td>
			</tr>
			<tr>
				<td><strong>Cost:</strong></td>
				<td>${wine.cost}</td>
			</tr>
			<tr>
				<td><strong>Vineyard:</strong></td>
				<td>${wine.vineyard}</td>
			</tr>
			
		</table>
		<br />
		<hr>
		
		<input type="submit" />
		<p>
		<form action="updateThisWineNow.do" method="POST">
			Wine ID: <input type="text" name="id" /> <input type="submit"
				value="Update Wine" />
		</form>
		</p>
		<p>
		<form action="deletedWine.do" method="GET">
Wine ID: <input type="text" name="id" /> <input type="submit"
	value="Delete Wine" />
</form>
</p>
		<br> <br>
		<p>
			<a href="index.do" class="btn btn-secondary" role="button">Back
				to Home</a>
		</p>
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