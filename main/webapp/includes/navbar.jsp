<header class="header" id="header">
	<nav class="nav container">
		<a href="index.jsp" class="nav__logo"> <ion-icon
				name="watch-outline"></ion-icon> Rolex
		</a>

		<div class="nav__menu" id="nav-menu">
			<ul class="nav__list">
				<li class="nav__item"><a href="#home"
					class="nav__link active-link">Home</a></li>
				<li class="nav__item"><a href="#featured" class="nav__link">Featured</a>
				</li>
				<li class="nav__item"><a href="#about" class="nav__link">About</a>
				</li>
				<li class="nav__item"><a href="product.jsp" class="nav__link">Products</a>
				</li>
			</ul>

			<div class="nav__close" id="nav-close">
				<ion-icon name="close-circle-outline"></ion-icon>
			</div>
		</div>

		<div class="nav__btns">
			<!-- Theme change button -->
			<ion-icon name="moon-outline" id="theme-button"></ion-icon>

			<a href="cart.jsp" class="nav__shop" id="cart-shop"> <ion-icon
					name="bag-handle-outline"></ion-icon>
			</a>



			<% 
			if(auth != null){%>
			<a href="orders.jsp" class="nav__shop" id="cart-shop"> 
			<ion-icon name="receipt-outline"></ion-icon>
			</a> 
			<a href="user-logout" class="nav__shop" id="cart-shop"> 
			<ion-icon name="log-out-outline"></ion-icon>
			</a>
			<%} else{ %>
			<a href="login.jsp" class="nav__shop" id="cart-shop"> 
			<ion-icon name="log-in-outline"></ion-icon>
			</a>
			<%} %>





			<div class="nav__toggle" id="nav-toggle">
				<ion-icon name="grid-outline"></ion-icon>
			</div>
		</div>
	</nav>
</header>
