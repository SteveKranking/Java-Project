<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Index</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">	
		<script src="/js/main.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	</head>

	<body>

			<nav class="navbar navbar-expand-lg navbar-custom bg-custom">
				<a href="/dashboard" class="navbar-brand"> Bracket Lottery </a>
	
				<div class="collapse navbar-collapse justify-content-end">
					<ul class="navbar-nav">
						
						<span class="nav-item currentUser"> <b> ${currentUser.username} </b> </span>
						
						<form class="form-inline my-2 my-lg-0 justify-content-end" method="POST" action="/logout">
							<button class="btn btn secondary" type="submit"> Logout </button>
						</form>
	
					</ul>
				</div>
			</nav>

		<div class="container">
			<div class="row">
				<div class="more-space">
                    <h1> This is the game page. </h1>
                    <h1> It's going to need a fully functioning bracket </h1>
                    <h1> that shows all the teams, scores, and update throughout the tournament. </h1>
				</div>
				
			</div>
		</div>

	</body>
</html>