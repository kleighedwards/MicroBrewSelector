<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<link rel="stylesheet" type="text/css" href="normalize.css" />
<link rel="stylesheet" type="text/css" href="skeleton.css" />
</head>
<body>

	<ul>
		<li><a href="index.html">Home Page</a></li>
		<li><a href="goToFavorites.do">Your Favorites</a></li>
		<li><a href="goToBeers.do">Full List</a></li>
		<li><a href="goToOptions.do">Palate Options</a></li>
		<li><a href="goToEdit.do">User Settings</a></li>
	</ul>
	<h2>Name of Beer: ${beer.name }</h2>
	<br>
	<p>Brand: ${beer.brand.name }</p>
	<img id="logo" src="${beer.brand.url}" alt="logo" />
	<br>
	<p>Beer Rating: ${beer.rating }</p>

	<p>Taste: ${beer.taste.name }</p>
	<br>
	<p>Style: ${beer.style.name }</p>
	<p>${beer.style.description }</p>
	<br>
	<p>Type: ${beer.type.name }</p>
	<p>${beer.type.description }</p>




	<br>
<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d1306385.860811039!2d-105.5584486352947!3d39.90779742870506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sliquor+store+${user.city}!5e0!3m2!1sen!2sus!4v1474385739312" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

<p>Find stores near you!</p>

	<p>Rate This Beer</p>
	<br>
	<form action="addToFavoritesFromDetails.do" method="POST">

		<input type="hidden" value="${beer.id}" name="addBeerId" /> <input
			type="submit" value="Add To Favorites" />
	</form>

</body>

</html>



