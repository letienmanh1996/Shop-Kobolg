<%-- 
    Document   : category
    Created on : Dec 1, 2022, 4:44:30 PM
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
            <link rel="stylesheet" href="./public/font Awesome/css/all.min.css" />
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
        </head>

        <body>
            <%@include file="./inc/header.jsp" %>
            <%@include file="./inc/headerNav.jsp" %>

            <!-- category -->
            <div class="main">
                <div class="container">
                    <div class="main-content">
                        <h1>Category Page</h1>
                        <div class="shop-control">
                            <div class="grid-view-mode">
                                <form action="">
                                    <a href="">
                                        <i class="fa-solid fa-list"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa-solid fa-bars"></i>
                                    </a>
                                </form>
                            </div>
                            <div class="kobolg-select">
                                <form action="CategoryServlet" method="get" class="kobolg-ordering">
                                    <input type="hidden" name="categoryId" value="${categoryId}"/>
                                    <input type="hidden" name="orderBy" value="price"/>
                                    <select name="order" id="" onchange="this.form.submit()">
                                        <option <c:if test="${order == 'asc'}">selected</c:if> value="asc">Price: Low to High</option>
                                        <option <c:if test="${order == 'desc'}">selected</c:if> value="desc">Price: High to Low</option>
                                        </select>
                                    </form>
                                    <form action="" class="kobolg-page">
                                        <select name="orderby" id="">
                                            <option value="" selected="selected">Show 12</option>
                                            <option value="" selected="selected">Show 05</option>
                                            <option value="" selected="selected">Show 10</option>
                                            <option value="" selected="selected">Show 12</option>
                                            <option value="" selected="selected">Show 15</option>
                                            <option value="" selected="selected">Show All</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                        </div>
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
                                                            <h5><span>$</span>${product.name}</h5>
                                                        </a>
                                                        <h6>${product.price}</h6>
                                                    </div>
                                                    <div class="group-button">
                                                        <div class="group-button-hover">
                                                            <a href="" class="hear-item">
                                                                <i class="fa-regular fa-heart"></i>
                                                            </a>
                                                            <form action="CartServlet" method="post">
                                                                <input type="hidden" name="productId" value="${product.id}" />
                                                                <input type="hidden" name="quantity" value="1" />
                                                                <input type="hidden" name="action" value="create" />
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
