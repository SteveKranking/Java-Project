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

			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav">
					
						<form class="form-inline my-2 my-lg-0 justify-content-end" method="POST" action="/login">

							<input class="homeLogin" id="email" placeholder="Email"name="email"/>
							<input class="homeLogin" type="password" id="password"  placeholder="Password" name="password"/>
							<button class="btn btn-primary homeLogin" type="submit" action=""> Login </button>
						
						</form>


				</ul>
			</div>
        </nav>

		<section class="more-space"></section>
		
		<div class="container">
			<div class="row">
				
				<div class="col-md-6">
					
					<p class="display-3" id="registerLogo"> Probably a Logo </p>

				</div>


				<div class="col-md-6">
					<div class="card-text-center">
							<div class="card-header">
								Register
							</div>
							<div class="card-body">
								<form:form method="POST" class="form-horizontal" action="/register" modelAttribute="user">
								<p class="card-text">
								<form:label path="username"> Username:</form:label>
								<form:input path="username"/>
								<form:errors path="username"></form:errors>
								</p>
								<p class="card-text">
								<form:label path="firstName">First Name:
								<form:errors path="firstName"></form:errors>
								</form:label>
								<form:input path="firstName"/>
								</p>
								<p class="card-text">
								<form:label path="lastName">Last Name:</form:label>
								<form:errors path="lastName"></form:errors>
								<form:input path="lastName"/>
								</p>
								<p class="card-text">
								<form:label path="email">Email:
								<form:errors path="Email"></form:errors>
								</form:label>
								<form:input path="email"/>
								</p>
								<p class="card-text">
								<form:label path="password">Password:
								<form:errors path="password"></form:errors>
								</form:label>

								<form:password path="password"/>
								</p>
								<p class="card-text">
								<form:label path="confirmPassword">Password Confirmation:</form:label>
								<form:password path="confirmPassword"/>
								<form:errors path="confirmPassword"></form:errors>
								</p>

								<p class="card-text"><form:errors path="user.*"/></p>
								<input type="submit" value="Register!"/>
								</form:form>

							</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	</section>
	</body>
</html>