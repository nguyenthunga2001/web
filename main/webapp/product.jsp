<%@page import="nlu.connection.DBConnection"%>
<%@page import="nlu.model.*"%>
<%@page import="nlu.dao.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null){
    	response.sendRedirect("index.jsp");
    }
     
    ProductDao pdao = new ProductDao(DBConnection.getConnection());
    List<Product> product = pdao.getAllProduct();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NLU Watch</title>
<%@ include file="includes/header.jsp"%>
</head>
<body>
	<%@ include file="includes/navbar.jsp"%>

	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>

				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<section class="products section container" id="products">
	<%
		if(!product.isEmpty()){
			for(Product p: product){
				out.println(p.getProductName());
			}
		}
		%>
		<h2 class="section__title">Products</h2>
		<div class="products__container grid">
		
			<article class="products__card">
				<img src="assets/img/product1.png" alt="" class="products__img">
				<h3 class="products__title">Spirit rose</h3>
				<span class="products__price">$1500</span>
				<a href="#">Buy Now</a>
				<button class="products__button">
					<i class='bx bx-shopping-bag'></i>
				</button>
			</article>

			<article class="products__card">
				<img src="assets/img/product2.png" alt="" class="products__img">

				<h3 class="products__title">Khaki pilot</h3>
				<span class="products__price">$1350</span>

				<button class="products__button">
					<i class='bx bx-shopping-bag'></i>
				</button>
			</article>

			<article class="products__card">
				<img src="assets/img/product3.png" alt="" class="products__img">

				<h3 class="products__title">Jubilee black</h3>
				<span class="products__price">$870</span>

				<button class="products__button">
					<i class='bx bx-shopping-bag'></i>
				</button>
			</article>

			<article class="products__card">
				<img src="assets/img/product4.png" alt="" class="products__img">

				<h3 class="products__title">Fosil me3</h3>
				<span class="products__price">$650</span>

				<button class="products__button">
					<i class='bx bx-shopping-bag'></i>
				</button>
			</article>

			<article class="products__card">
				<img src="assets/img/product5.png" alt="" class="products__img">

				<h3 class="products__title">Duchen</h3>
				<span class="products__price">$950</span>

				<button class="products__button">
					<i class='bx bx-shopping-bag'></i>
				</button>
			</article>
		</div>
	</section>


	<%@ include file="includes/end-footer.jsp"%>
	<%@ include file="includes/footer.jsp"%>
</body>
</html>