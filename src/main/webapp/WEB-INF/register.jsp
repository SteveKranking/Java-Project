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
			<a href="/index" class="navbar-brand"> Bracket Lottery </a>

			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav">
					
						<form class="form-inline my-2 my-lg-0 justify-content-end" method="POST" action="/login">

							<input class="homeLogin" id="email" placeholder="Email"name="email"/>
							<input class="homeLogin" type="password" id="password"  placeholder="Password" name="password"/>
							<button class="btn btn-primary homeLogin" type="submit"> Login </button>
						
						</form>


				</ul>
			</div>
        </nav>

		<section class="more-space"></section>
		
		<div class="container">
			<div class="row">
				
				<div class="col-md-6">
					
					<p class="display-3" id="registerLogo"> Probably a Logo of some kind </p>

				</div>


				<div class="col-md-6">
					<div class="card-text-center">
							<div class="card-header">
								Register
							</div>
							<div class="card-body">
								<form:form method="POST" class="form-horizontal" action="/register" modelAttribute="user">

									<table>
										<tr>
											<td><form:label path="username"> Username:</form:label></td>
											<td><form:input path="username"/></td>
											<td><form:errors path="username"></form:errors></td>
										</tr>
										<tr>
											<td><form:label path="firstName"> First Name:</form:label></td>
											<td><form:input path="firstName"/></td>
											<td><form:errors path="firstName"></form:errors></td>
										</tr>
										<tr>
											<td><form:label path="lastName"> Last Name:</form:label></td>
											<td><form:input path="lastName"/></td>
											<td><form:errors path="lastName"></form:errors></td>
										</tr>
										<tr>
											<td><form:label path="email"> Email:</form:label></td>
											<td><form:input path="email"/></td>
											<td><form:errors path="email"></form:errors></td>
										</tr>
										<tr>
											<td><form:label path="password"> Password:</form:label></td>
											<td><form:input path="password"/></td>
											<td><form:errors path="password"></form:errors></td>
										</tr>
										<tr>
											<td><form:label path="confirmPassword"> Confirm Password:</form:label></td>
											<td><form:input path="confirmPassword"/></td>
											<td><form:errors path="confirmPassword"></form:errors></td>
										</tr>
									</table>

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