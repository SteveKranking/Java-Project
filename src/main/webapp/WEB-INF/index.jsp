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
		<title>Dashboard</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css">
		<link rel="stylesheet"  href="/css/bootstrap.min.css">
		<script src="/js/main.js"></script>
		<script src="/js/bootstrap.min.js"></script>
	</head>

	<body>

		<nav class="navbar navbar-expand-lg navbar-custom bg-custom">
            <a href="#" class="navbar-brand"> Bracket Lottery </a>
        </nav>
        
        <br />
        <br />

        <div class="container">
            <div class="row">
                <div class="col-md-12">
    				<img id="indexBracket" src="https://vignette.wikia.nocookie.net/ssb/images/f/f8/BRACKET.jpg/revision/latest?cb=20150220191555"> 
                </div>
            </div>
		</div>

		<div class="container" "index-card-row">
			<div class="row">
					<div class="card col-md-3" id="index-card" style="width: 18rem;">
						<img class="card-img-top" src="https://cdn3.iconfinder.com/data/icons/black-easy/512/535106-user_512x512.png" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Join a Game </h5>
						</div>
					</div>
					<div class="card col-md-3" id="index-card" style="width: 18rem;">
						<img class="card-img-top" src="http://icons.iconarchive.com/icons/iconsmind/outline/512/Bulleted-List-icon.png" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"> Get Your Teams </h5>
						</div>
					</div>
					<div class="card col-md-3" id="index-card" style="width: 18rem;">
						<img class="card-img-top" src="http://www.clipartpanda.com/clipart_images/money-clipart-black-and-white-41001643/download" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"> Win Prizes! </h5>
						</div>
					</div>
			</div>
		</div>
		        
    </body>
</html>