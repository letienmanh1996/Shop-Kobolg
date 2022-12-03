<%-- 
    Document   : login
    Created on : Dec 2, 2022, 2:32:59 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Kobolg - Electronics Store</title>
        <link rel="stylesheet" href="./public/css/style.css" />
        <link rel="stylesheet" href="./public/css/setting.css" />
        <link rel="stylesheet" href="./public/font Awesome/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <%@include file="./inc/headerNav.jsp" %>
        <div class="banner-wrapper">
            <img src="/img/banner-for-all2.jpg" alt="" />
            <div class="container">
                <div class="benner-wrapper-inner">
                    <h1>
                        My Account
                        <span></span>
                    </h1>
                    <div class="breadcrumb-trail">
                        <ul>
                            <li>
                                <a href=""><span>Home</span></a>
                            </li>
                            <li>
                                <i class="fa-solid fa-chevron-right"></i>
                                <span>My Account</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <main class="site-main">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="u-column1">
                            <h2><i class="fa-solid fa-user"></i> LOGIN</h2>
                            <c:if test="${sessionScope.errors != null}">
                                <p>
                                    ${sessionScope.errors}
                                    <c:remove var="errors" />
                                </p>
                            </c:if>
                            <form action="LoginServlet" method="post">
                                <div class="kobolg-form">
                                    <label>
                                        Username or email addresses
                                        <span>*</span>
                                    </label>
                                    <input type="text" placeholder="Enter your users or email " name="email" />
                                </div>
                                <div class="kobolg-form">
                                    <label>
                                        Password
                                        <span>*</span>
                                    </label>

                                    <input type="password" placeholder="Enter your password" name="password"/>
                                </div>
                                <div class="login">
                                    <button type="submit">Log in </button>
                                    <div class="check-box">
                                        <input type="checkbox" id="scales" name="scales" checked />
                                        <label for="scales">Remember me</label>
                                    </div>
                                </div>
                                <div class="kobolg-lostpassword">
                                    <a href="">
                                        Lost your password?
                                        <span></span>
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- footer -->
        <%@include file="./inc/footer.jsp" %>
    </body>

</html>