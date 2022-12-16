<%-- 
    Document   : cart
    Created on : Dec 2, 2022, 1:17:54 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <style>
            input[type=number]::-webkit-inner-spin-button,
            input[type=number]::-webkit-outer-spin-button {

                opacity: 1;

            }


        </style>

    </head>

    <body>
        <header>
            <%@include file="./inc/header.jsp" %>
            <%@include file="./inc/headerNav.jsp" %>
        </header>
        <div class="banner-wrapper">
            <img src="./public/img/banner-for-all2.jpg" alt="">
            <div class="container">
                <div class="benner-wrapper-inner">
                    <h1> Cart
                        <span></span>
                    </h1>
                    <div class="breadcrumb-trail">
                        <ul>
                            <li>
                                <a href=""><span>Home</span></a>
                            </li>
                            <li>
                                <i class="fa-solid fa-chevron-right"></i>
                                <span>Cart</span>
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
                        <div class="main-content">
                            <div class="page-main-content">
                                <table class="shop-table">
                                    <thead>
                                        <tr>
                                            <th class="product-remove"></th>
                                            <th class="product-thumbnail">Img</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${cart}" var="orderDetailSession">
                                            <tr>
                                                <td class="product-remove">
                                                    <form action="CartServlet" method="post" class="delete">
                                                        <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                        <input type="hidden" name="action" value="delete"/>
                                                        <button type="submit">X</button>
                                                    </form>
                                                </td>
                                                <td class="product-thumbnail">
                                                    <a href="">
                                                        <img src="${orderDetailSession.productImg}" alt="">
                                                    </a>
                                                </td>
                                                <td class="product-name">
                                                    <a href=""> ${orderDetailSession.productName}</a>
                                                </td>
                                                <td class="product-price">
                                                    <span>$
                                                        <span>${orderDetailSession.productPrice}</span>
                                                    </span>
                                                </td>
                                                <td class="product-quantity">
                                                    <div class="quantity-lable">
                                                        <form action="CartServlet" method="post" class="quantity-item">
                                                            <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                            <input type="hidden" name="action" value="update"/>
                                                            <input type="hidden" name="quantity" value="-1"/>
                                                            <button type="submit" class="button-submit"> - </button>
                                                        </form>
                                                        <div class="quantity-item">${orderDetailSession.quantity}</div>
                                                        <form action="CartServlet" method="post" class="quantity-item">
                                                            <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                            <input type="hidden" name="action" value="update"/>
                                                            <input type="hidden" name="quantity" value="1"/>
                                                            <button type="submit"> + </button>
                                                        </form>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal">
                                                    <span>
                                                        $
                                                        <span>${orderDetailSession.quantity * orderDetailSession.productPrice}</span>
                                                    </span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        <tr>
                                            <td colspan="6" class="actions">
                                                <div class="coupon">
                                                    <input type="text" placeholder="Colpon code">
                                                    <button>Apply coupon</button>
                                                </div>
                                                <button class="button">Update cart</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cart-collaterals">
                    <div class="cart-totals">
                        <h2>Cart totals</h2>
                        <table class="shop-table">
                            <tbody>
                                <tr>
                                    <th>Subtotal</th>
                                    <td><span>$
                                            <span>${total}</span>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Total</th>
                                    <td>
                                        <span class="kobolg-price">$
                                            <span>
                                                ${total}
                                            </span>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="kobolg-checkout">
                            <a href="CheckoutServlet">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- footer -->
        <%@include file="./inc/footer.jsp" %>
    </body>

</html>