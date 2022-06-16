<%@page import="nlu.connection.DBConnection"%>
<%@page import="nlu.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
    	response.sendRedirect("index.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NLU Watch</title>
<%@ include file="includes/header.jsp"%>
</head>
<body>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email Address</label> <input class="form-control"
							name="login-email" type="email" placeholder="enter your email"
							required>
					</div>

					<div class="form-group">
						<label>Password</label> <input class="form-control"
							name="password" type="password" placeholder="enter your password"
							required>
					</div>

					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">   Remember me
						</label>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>
</body>
</html>