<%-- 
    Document   : product-detail
    Created on : Dec 1, 2022, 6:22:22 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!DOCTYPE html>
    <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Kobolg - Electronics Store</title>
            <link rel="stylesheet" href="./public/css/style.css" />
            <link rel="stylesheet" href="./publiccss/setting.css" />
            <link rel="stylesheet" href="./font Awesome/css/all.min.css" />
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
        </head>

        <body>
            <%@include file="./inc/header.jsp" %>
            <%@include file="./inc/headerNav.jsp" %>
            <div class="banner-wrapper">
                <div class="container">
                    <nav class="kobolg-breadcrumb">
                        <a href="">Home</a>
                        <i class="fa-solid fa-chevron-right"></i>
                        <a href="">Shop</a>
                        <i class="fa-solid fa-chevron-right"></i>
                        <span>Single Product</span>

                    </nav>
                </div>
            </div>
            <div class="single-thumb">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <a class="img-product">
                                <img  src="${product.img}" class="w-100 h-100">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <div class="single-right">
                                <h1>${product.name}</h1>
                                <p>
                                    <span>$${product.price}</span>
                                    <span>-</span>
                                    <span>$185.00</span>
                                </p>
                                <p class="single-item">
                                    Availability:
                                    <span>In stock</span>
                                </p>
                                <div class="kobolg-product-details">
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.</p>
                                    <ul>
                                        <li>

                                            Water-resistant fabric with soft lycra detailing inside</li>
                                        <li>CLean zip-front, and three piece hood</li>
                                        <li>Subtle branding and diagonal panel detail</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="single-variation">
                                <form action="CartServlet" method="post" class="row">
                                    <input type="hidden" name="action" value="create"/>
                                    <div class="quantity">
                                        <!--<a href="">-</a>-->    
                                        <input type="number" name="quantity" value="1" min="1">
                                        <!--<a href="">+</a>-->
                                    </div>
                                    <form action="CartServlet" method="post">
                                        <input type="hidden" name="productId" value="${product.id}"/>
                                        <input type="hidden" name="quantity" value="1"/>
                                        <input type="hidden" name="action" value="create"/>
                                        <button type="submit" class="submit-button">
                                            <div class="text-submit">
                                                ADD TO CART
                                            </div>
                                            <div class="submit-cart">
                                                <i class="fa-solid fa-cart-shopping"></i>
                                            </div>
                                        </button>
                                    </form>
                                </form>
                            </div>
                            <div class="yith-wcwl-add">
                                <div class="yith-wcwl-add-button">
                                    <a href="">
                                        <i class="fa-regular fa-heart"></i> Add to Wishlist
                                    </a>
                                    <a href="">
                                        <i class="fa-solid fa-arrow-right-arrow-left"></i> Compare
                                    </a>
                                </div>
                            </div>
                            <div class="product-meta">
                                <h6>SKU: 885B712</h6>
                                <span>Categories:
                                    <a href="">Game & Consoles</a>
                                    ,
                                    <a href="">New arrivals</a>
                                    ,
                                    <a href="">Summer Sale</a>
                                </span>

                            </div>
                            <div class="product-meta">
                                <span>Tags:
                                    <a href="">Game & Consoles</a>
                                    ,
                                    <a href="">Sock</a>
                                </span>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <div class="footer-newsletter">
                <div class="container">
                    <div class="kobolg-newsletter">
                        <div class="newsletter-inner">
                            <div class="newsletter-info">
                                <h3>Newsletter</h3>
                                <h4>Get Discount 30% Off</h4>
                                <p>Suspendisse netus proin eleifend fusce sollicitudin potenti vel magnis nascetur</p>
                            </div>
                            <div class="newsletter-form">
                                <div class="newsletter-form-inner">
                                    <input type="text" placeholder="Enter your email ...">
                                    <a href=""><span> SUBSCRIBE</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="container">
                    <div class="foot-end">
                        <div class="row">
                            <div class="col-md-6">
                                <p>© Copyright 2020 <a href="">Kobolg</a> . All Rights Reserved.</p>
                            </div>
                            <div class="col-md-6">
                                <div class="content-socials">
                                    <ul class="socials-list">
                                        <li>
                                            <a href="https://facebook.com" target="_blank">
                                                <i class="fa-brands fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.instagram.com" target="_blank">
                                                <i class="fa-brands fa-instagram"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com" target="_blank">
                                                <i class="fa-brands fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.pinterest.com" target="_blank">
                                                <i class="fa-brands fa-pinterest-p"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </body>

    </html>
</html>
