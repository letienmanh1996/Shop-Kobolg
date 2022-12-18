<%-- 
    Document   : shop
    Created on : Dec 16, 2022, 6:04:30 PM
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
        </header>
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
                    <div class="col-md-3">
                        <c:forEach items="${categoryList}" var="category">
                            <div class="col-md-12">
                                <div class="camera">
                                    <a href="CategoryServlet?categoryId=${category.id}"> 
                                        <img src="${category.img}" alt="">
                                        <h1>${category.name}</h1>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="col-md-9">
                        <div class="container">
                            <div class="row">
                                <c:forEach items="${productList}" var="product">
                                    <div class="col-md-4">
                                        <div class="products-inner-item">
                                            <div class="products-hover">
                                                <div class="products-thumb">
                                                    <a href="ProductDetailServlet?productId=${product.id}">
                                                        <img src="${product.img}" alt="" />
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
                                                        <h5>${product.name}</h5>
                                                    </a>
                                                    <h6>$${product.price}</h6>
                                                </div>
                                                <div class="group-button">
                                                    <div class="group-button-hover">
                                                        <a href="" class="hear-item">
                                                            <i class="fa-regular fa-heart"></i>
                                                        </a>
                                                        <form action="CartServlet" method="post">
                                                            <input type="hidden" name="productId" value="${product.id}"/>
                                                            <input type="hidden" name="quantity" value="1"/>
                                                            <input type="hidden" name="action" value="create"/>
                                                            <button type="submit" class="submit-button">
                                                                <a href="" class="car-item">
                                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                                </a>
                                                            </button>
                                                        </form>
                                                        <a href="" class="arrow-item">
                                                            <i class="fa-solid fa-arrow-right-arrow-left"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>

</html>
</html>