<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Show Wine</title>
</head>
<body>

	<div class="container-fluid">
<h4>Wine Selected:</h4>
	<h5>Label Name: ${wine.labelName}(${wine.yearProduced})</h5>
		<p>${wine.id}</p>
		<p>${wine.type}</p>
		<p>${wine.flavor}</p>
		<p>${wine.description}</p>
		<p>${wine.rating}</p>
		<p>${wine.cost}</p>
		<p>${wine.vineyard}</p>
	</div>
	
	<p>
	
	<form action="updateThisWineNow.do" method="POST">
Wine ID: <input type="text" name="id" /> <input type="submit"
	value="Update Wine" />
</form>
	
	
	</p>
	
	
	
	<p>
		<a href="index.do" class="btn btn-secondary" role="button">Back
			to Home</a>
	</p>

</body>
</html>