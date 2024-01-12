<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Tue Jan 02 2024 07:44:22 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618dab2" data-wf-site="658e8233ef485db1d618da5a" lang="en">
<head>
    <meta charset="utf-8">
    <title>Join | Ezra Folio</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/resources/static/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/hans-wondrous-site-b14015.webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/nav.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",
    ("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="${pageContext.request.contextPath}/resources/static/images/favicon.svg" rel="shortcut icon" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/resources/static/images/webclip.svg" rel="apple-touch-icon">

</head>
<body>
<div id="navbar-container"></div>


<div id="top" class="section">
    <div class="main-container w-container">
        <div class="center-text">
            <div class="center-content">
                <div class="master-product-page">
                    <h1>Volunteer activity</h1>
                    <div class="big-text">Person who stand up for the common good</div>
                    <div class="space-64"></div>
                    <div class="master-product-purchase">
                        <div class="add-to-cart">
                            <div class="w-commerce-commerceaddtocartform default-state-add-to-cart">
                                <div class="left-add-to-cart">
                                    <input type="number" pattern="^[0-9]+$" inputmode="numeric"
                                           id="productNumber"
                                           name="productNumber" min="1"
                                           class="w-commerce-commerceaddtocartquantityinput input-field quantity"
                                           value="1">
                                    <div>$&nbsp;1000.00&nbsp;USD</div>
                                </div>
                                <div class="right-add-to-cart">
                                    <input id="addToCartBtn" type="button" aria-busy="false" aria-haspopup="dialog" class="w-commerce-commerceaddtocartbutton cta add-to-cart-cta" value="Add to Cart">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="space-64"></div>
                    <div class="master-product-visuals">
                        <h3> One of my favorite things is "collaboration".
                            It's more rewarding to accomplish something together than it is to do it alone.
                            I believe this is the source of human technological progress.</h3>
                        <div style="background-image:url('../../../resources/static/images/ezra-image-Campus1.jpg')" class="image-wrap-product-main-image"></div>

                        <h3> So, I feel happy when I help members to do something together</h3>
                        <div>
                            <div style="background-image:url('../../../resources/static/images/ezra-image-campus2.jpg')" class="image-wrap-product-main-image"></div>
                        </div>
                        <h3>This my personality allowed me to go to school as an student Council.</h3>
                    </div>
                </div>
                <h1> Guess my salary. It's purely up to you.</h1>
            </div>
        </div>
    </div>
</div>

<div id="cart" class="hidden">
    <div class="w-commerce-commercecartcontainerwrapper w-commerce-commercecartcontainerwrapper--cartType-rightSidebar cart-container">
        <div class="w-commerce-commercecartcontainer cart-background">
            <div class="space-100"></div>
            <div class="w-commerce-commercecartheader">
                <h4 class="w-commerce-commercecartheading">Your Cart</h4>
                <a id="closeCartBtn" href="#" data-node-type="commerce-cart-close-link" role="button" aria-label="Close cart" class="w-commerce-commercecartcloselink close-button w-inline-block">
                    <svg width="16px" height="16px" viewBox="0 0 16 16"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g fill-rule="nonzero" fill="#333333"><polygon points="6.23223305 8 0.616116524 13.6161165 2.38388348 15.3838835 8 9.76776695 13.6161165 15.3838835 15.3838835 13.6161165 9.76776695 8 15.3838835 2.38388348 13.6161165 0.616116524 8 6.23223305 2.38388348 0.616116524 0.616116524 2.38388348 6.23223305 8"></polygon></g></g></svg></a>
            </div>

            <div class="w-commerce-commercecartitem">
                <img src="../../../resources/static/images/ezra-image-volunteer1.JPG" style=" height: 60px">
                <div class="w-commerce-commercecartiteminfo">
                    <div class="w-commerce-commercecartproductname">Volunteer</div>
                    <div>$&nbsp;49.00&nbsp;USD</div>
                </div>
                <input class="w-commerce-commercecartquantity input-field quantity" required="" pattern="^[0-9]+$"
                       inputmode="numeric" type="number" name="quantity" autocomplete="off"  value="1">
            </div>
            <div class="w-commerce-commercecartitem">
                <img src="../../../resources/static/images/ezra-image-volunteer1.JPG" style=" height: 60px">
                <div class="w-commerce-commercecartiteminfo">
                    <div class="w-commerce-commercecartproductname">Volunteer</div>
                    <div>$&nbsp;49.00&nbsp;USD</div>
                </div>
                <input class="w-commerce-commercecartquantity input-field quantity" required="" pattern="^[0-9]+$"
                       inputmode="numeric" type="number" name="quantity" autocomplete="off"  value="1">
            </div>

            <div class="w-commerce-commercecartfooter">
                <div aria-atomic="true" aria-live="polite" class="w-commerce-commercecartlineitem">
                    <div>Subtotal</div>
                    <div class="w-commerce-commercecartordervalue">$&nbsp;1,042.00&nbsp;USD</div>
                </div>
                <input id="continueCheckout" type="button" aria-busy="false" aria-haspopup="dialog"
                       class="w-commerce-commerceaddtocartbutton cta add-to-cart-cta" value="Continue to Checkout">
            </div>
        </div>
    </div>
</div>

<div id="footer-container"></div>
</body>
<style>
    #cart {
        position: fixed;
        top: 0;
        right: -300px; /* Initially hidden to the right */
        width: 300px;
        height: 100%;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        transition: right 0.3s ease-in-out;
    }

    .hidden {
        display: none; /* Initially hidden */
    }

</style>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const addToCartBtn = document.getElementById("addToCartBtn");
        const cart = document.getElementById("cart");
        const closeCartBtn = document.getElementById("closeCartBtn");
        addToCartBtn.addEventListener("click", function () {
            // Toggle cart visibility
            if (cart.classList.contains("hidden")) {
                cart.classList.remove("hidden");
                cart.style.right = "0"; // Slide in from the right
            } else {
                closeCart();
            }
        });
        closeCartBtn.addEventListener("click", function () {
            closeCart();
        });

        function closeCart() {
            cart.style.right = "-300px"; // Slide out to the right
            cart.addEventListener("transitionend", function () {
                cart.classList.add("hidden");
            }, { once: true });
        }
    });
</script>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
</html>
