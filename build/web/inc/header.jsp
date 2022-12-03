<%-- 
    Document   : header
    Created on : Oct 29, 2022, 7:13:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header-top">
    <div class="container">
        <div class="row justify-content-between">
            <div class="header-top-left">
                <div class="header-map">
                    <a href="">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>Store Direction</span>
                    </a>
                </div>
                <div class="header-order">
                    <a href="">
                        <i class="fa-solid fa-house-user"></i>
                        <span>Order Tracking</span>
                    </a>
                </div>
            </div>
            <div class="header-top-right">
                <div class="header-en">
                    <a href="">
                        <img src="./public/img/en.png" alt="" />
                        <span>English</span>
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                </div>
                <div class="header-usd">
                    <a href="">
                        <span>USD</span>
                        <i class="fa-solid fa-caret-down"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="header-logo">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-2">
                <div class="header-logo-menu">
                    <a href="HomeServlet"><img src="./public/img/logo.png" alt="" /></a>
                </div>
            </div>
            <div class="col-md-8">
                <div class="header-logo-search justify-content-center">
                    <form action="SearchServlet" method="get" class="search-inner d-flex rounded">
                        <input type="text" name="key" class="search border-0" placeholder="Search here.." />
                        <div class="search-button">
                            <button class="btn text-white btn-submit" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-2">
                <div class="header-logo-control">
                    <div class="header-control-inner">
                        <div class="header-menu-item">
                            <c:if test="${sessionScope.user == null}">
                                <a href="LoginServlet">Login</a>
                                <a href=""><i class="fa-regular fa-user"></i></a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a href="LogoutServlet">Logout</a>
                                <a href=""><i class="fa-regular fa-user"></i></a>
                            </c:if>
                        </div>
                    </div>
                    <div class="header-menu-cart">
                        <div class="header-cart-item">
                            <a href="">
                                <span><i class="fa-solid fa-cart-shopping"></i></span>
                                <span class="count">3</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
