<%-- 
    Document   : home
    Created on : Oct 29, 2022, 7:10:28 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Kobolg - Electronics Store</title>
        <link rel="stylesheet" href="./public/css/style.css" />
        <link rel="stylesheet" href="./public/font Awesome/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    </head>

    <body>
        <header>
            <%@include file="./inc/header.jsp" %>
            <%@include file="./inc/headerNav.jsp" %>
            <div class="fullwidth-template">
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="container">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="./public/img/slide11.jpg" alt="First slide" />
                                        <div class="content-slide">
                                            <div class="slide-inner">
                                                <h5>BACK FRIDAY</h5>
                                                <h1>Electronics</h1>
                                                <h2>New Arrivals</h2>
                                                <a class="btn-shop-now" href="">SHOP NOW
                                                    <i class="fa-solid fa-chevron-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="./public/img/slide12.jpg" alt="Second slide" />
                                        <div class="content-slide">
                                            <div class="slide-inner">
                                                <h5>BACK SELLING</h5>
                                                <h1>Life Compani</h1>
                                                <h2>Smart Home</h2>
                                                <a class="btn-shop-now" href="">SHOP NOW
                                                    <i class="fa-solid fa-chevron-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="./public/img/slide13.jpg" alt="Third slide" />
                                        <div class="content-slide">
                                            <div class="slide-inner">
                                                <h5>THIS WEEK ONLY</h5>
                                                <h1>Up Sale To</h1>
                                                <h2>50% Off</h2>
                                                <a href="">SHOP NOW
                                                    <i class="fa-solid fa-chevron-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- /* category */ -->
        <div class="category">
            <div class="container">
                <div class="category-thumb">
                    <h2>SHOP BY CATEGORY</h2>
                </div>
            </div>
        </div>
        <div class="category">
            <div class="container">
                <div class="row">
                    <c:forEach items="${categoryList}" var="category">
                        <div class="col-md-3">
                            <div class="camera">
                                <a href="CategoryServlet?categoryId=${category.id}"> 
                                    <img src="${category.img}" alt="">
                                    <h1>${category.name}</h1>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- category-end -->
        <div class="section-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="banner-inner">
                            <div class="banner-thumb">
                                <img class="w-100" src="./public/img/banner12.jpg" alt="" />
                            </div>
                            <div class="banner-content">
                                <div class="title-wrap">
                                    <h5><span></span> HEADPHONES</h5>
                                    <h6>New Collection</h6>
                                    <a class="btn-shop-now" href="">SHOP NOW
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="banner-inner">
                            <div class="banner-thumb">
                                <img class="w-100" src="./public/img/banner13.jpg" alt="" />
                            </div>
                            <div class="banner-content">
                                <div class="title-wrap">
                                    <h5><span></span> HEADPHONES</h5>
                                    <h6>Best Seller</h6>
                                    <a class="btn-shop-now" href="">SHOP NOW
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-001">
            <div class="container">
                <div class="heading-ineer">
                    <h3 class="title">
                        <span class="title-item">
                            <span class="item-inner-01"></span>
                            <span>Best Seller</span>
                            <span class="item-inner-02"></span>
                        </span>
                    </h3>
                    <div class="subtitle">
                        <p>
                            Made with care for your little ones, our products are perfect for every occasion. Check it out.
                        </p>
                    </div>
                </div>
                <div class="kobolg-products">
                    <div class="products-inner">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro61-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Back Watches</h5>
                                            </a>
                                            <h6>$79.00 - $139.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro101-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Mac 27 inch</h5>
                                            </a>
                                            <h6>$60.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro1113-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Red Consoles</h5>
                                            </a>
                                            <h6>$129.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro141-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Smart Monitor</h5>
                                            </a>
                                            <h6>$89.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro71-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Gaming Mouse</h5>
                                            </a>
                                            <h6>$89.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro91-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Classic Watches</h5>
                                            </a>
                                            <h6>$89.00 - $139.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro1211-2-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Modern Watchess</h5>
                                            </a>
                                            <h6>$119.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="products-inner-item">
                                    <div class="products-hover">
                                        <div class="products-thumb">
                                            <a href="">
                                                <img src="./public/img/apro151-1-270x350.jpg" alt="" />
                                            </a>
                                            <div class="flash">
                                                <a href=""><i class="fa-regular fa-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="products-info">
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <a class="products-item" href="">
                                                <h5>Cellphone Factory</h5>
                                            </a>
                                            <h6>$79.00</h6>
                                        </div>
                                        <div class="group-button">
                                            <div class="group-button-hover">
                                                <a href="" class="hear-item">
                                                    <i class="fa-regular fa-heart"></i>
                                                </a>
                                                <a href="" class="car-item">
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </a>
                                                <a href="" class="arrow-item">
                                                    <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="best-seller">
            <div class="best-seller-101">
                <div class="best-seller img">
                    <img src="./public/img/banner101.jpg" alt="" />
                </div>
                <div class="container">
                    <div class="content-best">
                        <h5>MODERN LAPTOP</h5>
                        <h1>Best Seller</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit justo</p>
                        <a class="btn-shop-now btn-color-red" href=" ">SHOP NOW
                            <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-001">
            <div class="container">
                <div class="heading-ineer">
                    <h3 class="title">
                        <span class="title-item">
                            <span class="item-inner-01"></span>
                            <span>New Arrival</span>
                            <span class="item-inner-02"></span>
                        </span>
                    </h3>
                    <div class="subtitle">
                        <p>
                            Made with care for your little ones, our products are perfect for every occasion. Check it out.
                        </p>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="products-inner-item">
                                <div class="products-hover">
                                    <div class="products-thumb">
                                        <a href="">
                                            <img src="./public/img/apro13-1-270x350.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="products-info info-001">
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <a class="products-item" href="">
                                            <h5>Meta Watches</h5>
                                        </a>
                                        <h6>$109.00</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="products-inner-item">
                                <div class="products-hover">
                                    <div class="products-thumb">
                                        <a href="">
                                            <img src="./public/img/apro302-270x350.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="products-info info-001">
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <a class="products-item" href="">
                                            <h5> Circle Watches</h5>
                                        </a>
                                        <h6>$79.00</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="products-inner-item">
                                <div class="products-hover">
                                    <div class="products-thumb">
                                        <a href="">
                                            <img src="./public/img/apro31-1-270x350.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="products-info info-001">
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <a class="products-item" href="">
                                            <h5> Blue Smartphone</h5>
                                        </a>
                                        <h6>$120.00</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="products-inner-item">
                                <div class="products-hover">
                                    <div class="products-thumb">
                                        <a href="">
                                            <img src="./public/img/apro41-1-270x350.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="products-info info-001">
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <a class="products-item" href="">
                                            <h5>White Watches </h5>
                                        </a>
                                        <h6>$134.00</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-002">
            <div class="container">
                <div class="benner-inner">
                    <div class="benner-thumd">
                        <img src="./public/img/banner28.jpg" alt="" />
                    </div>
                    <div class="benner-info container">
                        <div class="benner-content">
                            <div class="benner-label">30 Nov - 03 Dec</div>
                            <h6>New Collection</h6>
                        </div>
                        <div class="cate">50% Off / Selected items</div>
                        <div class="button-wrap">
                            <p>
                                Mus venenatis habitasse leo malesuada lacus commodo faucibus torquent donec
                            </p>
                            <a class="btn-shop-now" href="">SHOP NOW
                                <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- kobolg blog -->
        <div class="section-001">
            <div class="container">
                <div class="heading-ineer">
                    <h3 class="title">
                        <span class="title-item">
                            <span class="item-inner-01"></span>
                            <span>Kobolg Blog</span>
                            <span class="item-inner-02"></span>
                        </span>
                    </h3>
                    <div class="subtitle">
                        <p>
                            Made with care for your little ones, our products are perfect for every occasion. Check it out.
                        </p>
                    </div>
                </div>
                <div class="kobolg-blog">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="post-inner">
                                <div class="post-thumb">
                                    <a href="">
                                        <img src="./public/img/blogpost1-370x330.jpg" alt="">
                                    </a>
                                    <a href="" class="datebox">
                                        <span>19</span>
                                        <span class="datebox-item"></span>
                                        <span>Dec</span>
                                    </a>
                                </div>
                            </div>
                            <div class="post-content">
                                <div class="post-info">
                                    <h2><a href="">Not your ordinary multi service.</a>
                                        <span class="post-item"></span>
                                    </h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia
                                    </p>
                                </div>
                                <div class="post-meta">
                                    <div class="post-author">
                                        <span>By:
                                            <a href="">Admin</a>
                                        </span>
                                    </div>
                                    <div class="post-comment-icon">
                                        <a href=""><i class="fa-regular fa-eye"></i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post-inner">
                                <div class="post-thumb">
                                    <a href="">
                                        <img src="./public/img/blogpost5-370x330.jpg" alt="">
                                    </a>
                                    <a href="" class="datebox">
                                        <span>19</span>
                                        <span class="datebox-item"></span>
                                        <span>Dec</span>
                                    </a>
                                </div>
                            </div>
                            <div class="post-content">
                                <div class="post-info">
                                    <h2><a href="">Not your ordinary multi service.</a>
                                        <span class="post-item"></span>
                                    </h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia
                                    </p>
                                </div>
                                <div class="post-meta">
                                    <div class="post-author">
                                        <span>By:
                                            <a href="">Admin</a>
                                        </span>
                                    </div>
                                    <div class="post-comment-icon">
                                        <a href=""><i class="fa-regular fa-eye"></i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post-inner">
                                <div class="post-thumb">
                                    <a href="">
                                        <img src="./public/img/blogpost9-370x330.jpg" alt="">
                                    </a>
                                    <a href="" class="datebox">
                                        <span>19</span>
                                        <span class="datebox-item"></span>
                                        <span>Dec</span>
                                    </a>
                                </div>
                            </div>
                            <div class="post-content">
                                <div class="post-info">
                                    <h2><a href="">Not your ordinary multi service.</a>
                                        <span class="post-item"></span>
                                    </h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada sodales quisque litora dapibus primis lacinia
                                    </p>
                                </div>
                                <div class="post-meta">
                                    <div class="post-author">
                                        <span>By:
                                            <a href="">Admin</a>
                                        </span>
                                    </div>
                                    <div class="post-comment-icon">
                                        <a href=""><i class="fa-regular fa-eye"></i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="./inc/footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js " integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js " integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js " integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl " crossorigin="anonymous "></script>
    </body>

</html>
</html>