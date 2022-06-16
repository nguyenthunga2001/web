<%@page import="nlu.connection.DBConnection"%>
<%@page import="nlu.model.*"%>
<%@page import = "java.util.List"%>
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
<%@ include file="includes/header.jsp" %>
</head>
<body>
	<%@ include file="includes/navbar.jsp" %>
	<%@ include file="includes/landing-page.jsp" %>


	<!-- FEATURED -->
            <section class="featured section container" id="featured">
                <h2 class="section__title">
                    Featured
                </h2>

                <div class="featured__container grid">
                    <article class="featured__card">
                        <span class="featured__tag">Sale</span>

                        <img src="img/featured1.png" alt="" class="featured__img">

                        <div class="featured__data">
                            <h3 class="featured__title">Jazzmaster</h3>
                            <span class="featured__price">$1050</span>
                        </div>

                        <button class="button featured__button">ADD TO CART</button>
                    </article>

                    <article class="featured__card">
                        <span class="featured__tag">Sale</span>

                        <img src="img/featured2.png" alt="" class="featured__img">

                        <div class="featured__data">
                            <h3 class="featured__title">Ingersoll</h3>
                            <span class="featured__price">$250</span>
                        </div>

                        <button class="button featured__button">ADD TO CART</button>
                    </article>

                    <article class="featured__card">
                        <span class="featured__tag">Sale</span>

                        <img src="img/featured3.png" alt="" class="featured__img">

                        <div class="featured__data">
                            <h3 class="featured__title">Rose gold</h3>
                            <span class="featured__price">$890</span>
                        </div>

                        <button class="button featured__button">ADD TO CART</button>
                    </article>
                </div>
            </section>
            
            <!-- ABOUT -->
            <section class="story section container" id="about">
                <div class="story__container grid">
                    <div class="story__data">
                        <h2 class="section__title story__section-title">
                            Our Story
                        </h2>
    
                        <h1 class="story__title">
                            Inspirational Watch of <br> this year
                        </h1>
    
                        <p class="story__description">
                            The latest and modern watches of this year, is available in various 
                            presentations in this store, discover them now.
                        </p>
    
                        <a href="#" class="button button--small">Discover</a>
                    </div>

                    <div class="story__images">
                        <img src="img/story.png" alt="" class="story__img">
                        <div class="story__square"></div>
                    </div>
                </div>
            </section>
            
            <!-- NEW -->
            <section class="new section container" id="new">
                <h2 class="section__title">
                    New Arrivals
                </h2>
                
                <div class="new__container">
                    <div class="swiper new-swiper">
                        <div class="swiper-wrapper">
                            <article class="new__card swiper-slide">
                                <span class="new__tag">New</span>
        
                                <img src="img/new1.png" alt="" class="new__img">
        
                                <div class="new__data">
                                    <h3 class="new__title">Longines rose</h3>
                                    <span class="new__price">$980</span>
                                </div>
        
                                <button class="button new__button">ADD TO CART</button>
                            </article>

                            <article class="new__card swiper-slide">
                                <span class="new__tag">New</span>
        
                                <img src="img/new2.png" alt="" class="new__img">
        
                                <div class="new__data">
                                    <h3 class="new__title">Jazzmaster</h3>
                                    <span class="new__price">$1150</span>
                                </div>
        
                                <button class="button new__button">ADD TO CART</button>
                            </article>

                            <article class="new__card swiper-slide">
                                <span class="new__tag">New</span>
        
                                <img src="img/new3.png" alt="" class="new__img">
        
                                <div class="new__data">
                                    <h3 class="new__title">Dreyfuss gold</h3>
                                    <span class="new__price">$750</span>
                                </div>
        
                                <button class="button new__button">ADD TO CART</button>
                            </article>

                            <article class="new__card swiper-slide">
                                <span class="new__tag">New</span>
        
                                <img src="img/new4.png" alt="" class="new__img">
        
                                <div class="new__data">
                                    <h3 class="new__title">Portuguese rose</h3>
                                    <span class="new__price">$1590</span>
                                </div>
        
                                <button class="button new__button">ADD TO CART</button>
                            </article>                       
                        </div>
                    </div>
                </div>
            </section>
	<%@ include file="includes/end-footer.jsp" %>
	<%@ include file="includes/footer.jsp" %>
</body>
</html>