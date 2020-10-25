<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
	
<title>List Of Wines</title>

</head>

<body style="background-color:SeaShell;">
	<h1 style="color:purple;">List of Wines: <img src="https://www.iconspng.com/images/summer-wine/summer-wine.jpg" alt="wine picture" style="width:100px;height:100px;"></h1>
		<div class="container-fluid">
		<table class="table table-striped table-hover">

			<c:forEach items="${wine }" var="wines">
				<tr>
					<td>${wines.id }</td>
					<td><a href="getWine.do?wid=${wines.id }">${wines.labelName }</a></td> 
					<%-- <td><a href="getWine.do?wid=1">${wines.labelName } <img src="https://scontent-yyz1-1.cdninstagram.com/v/t51.2885-15/e35/119652575_3802734493326071_8782000831760004852_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=j-j7bd2SmwoAX_VtBzz&_nc_tp=18&oh=9b8913a718f88dca9d975a42f157c796&oe=5FC08422" alt="palo 61 wine" style="width:100px;height:100px"></a></td> --%>
					
				</tr>
			</c:forEach>
		</table>

<!-- 	<p>
			<a href="index.do" class="btn btn-secondary" role="button">Back
				to Home</a>
		</p> -->
		<hr>
		<br>
	<p>
			<a href="index.do" class="btn btn-outline-primary" role="button">Back
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