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

<div data-node-type="commerce-cart-container-wrapper" style="opacity: 1; transition: opacity 300ms ease 0s;" class="w-commerce-commercecartcontainerwrapper w-commerce-commercecartcontainerwrapper--cartType-rightSidebar cart-container">
    <div role="dialog"  class="w-commerce-commercecartcontainer cart-background" style="transform: translateX(0px); transition: transform 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94) 0s;">
        <div class="w-commerce-commercecartheader">
        <h4 class="w-commerce-commercecartheading">Your Cart</h4>
        <a href="#" data-node-type="commerce-cart-close-link" role="button" aria-label="Close cart" class="w-commerce-commercecartcloselink close-button w-inline-block">
            <svg width="16px" height="16px" viewBox="0 0 16 16">
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g fill-rule="nonzero" fill="#333333">
                        <polygon points="6.23223305 8 0.616116524 13.6161165 2.38388348 15.3838835 8 9.76776695 13.6161165 15.3838835 15.3838835 13.6161165 9.76776695 8 15.3838835 2.38388348 13.6161165 0.616116524 8 6.23223305 2.38388348 0.616116524 0.616116524 2.38388348 6.23223305 8">

                        </polygon>
                    </g>
                </g>
            </svg>
        </a>
    </div>
        <div class="w-commerce-commercecartformwrapper">
            <form data-node-type="commerce-cart-form" style="" class="w-commerce-commercecartform">
                <div class="w-commerce-commercecartlist" data-wf-collection="database.commerceOrder.userItems" data-wf-template-id="wf-template-300589f9-0e27-efee-b040-658b10b0b89b">
                    <div class="w-commerce-commercecartitem">
                        <img src="https://uploads-ssl.webflow.com/654c1bf09d96dfcd7428d271/654c1bf09d96dfcd7428d32f_Icon%20pack-min.jpg" alt="" class="w-commerce-commercecartitemimage"><div class="w-commerce-commercecartiteminfo">
                        <div class="w-commerce-commercecartproductname">My Icon Pack</div>
                        <div>$&nbsp;49.00&nbsp;USD</div>
                        <ul class="w-commerce-commercecartoptionlist"></ul>
                        <a href="#" role="button" aria-label="Remove item from cart" class="w-inline-block">
                            <div class="remove-link">Remove</div>
                        </a>
                    </div>
                        <input aria-label="Update quantity" class="w-commerce-commercecartquantity input-field quantity" required="" pattern="^[0-9]+$" inputmode="numeric" type="number" name="quantity" autocomplete="off" value="9">
                    </div>
                    <div class="w-commerce-commercecartitem">
                        <img src="https://uploads-ssl.webflow.com/654c1bf09d96dfcd7428d271/654c1bf09d96dfcd7428d32d_Ui%20Kit.jpg" alt="" class="w-commerce-commercecartitemimage">
                        <div class="w-commerce-commercecartiteminfo">
                            <div class="w-commerce-commercecartproductname">Figma UI kit</div>
                            <div>$&nbsp;129.00&nbsp;USD</div>
                            <ul class="w-commerce-commercecartoptionlist"></ul>
                            <a href="#" role="button" aria-label="Remove item from cart"  class="w-inline-block">
                                <div class="remove-link">Remove</div>
                            </a>
                        </div>
                        <input aria-label="Update quantity"  class="w-commerce-commercecartquantity input-field quantity" required="" pattern="^[0-9]+$" inputmode="numeric" type="number" name="quantity" autocomplete="off" value="2">
                    </div>
                </div>
                <div class="w-commerce-commercecartfooter">
                    <div aria-atomic="true" aria-live="polite" class="w-commerce-commercecartlineitem">
                        <div>Subtotal</div>
                        <div class="w-commerce-commercecartordervalue">$&nbsp;699.00&nbsp;USD</div>
                    </div>
                    <div>
                        <div data-node-type="commerce-cart-quick-checkout-actions" style="display:none">
                            <a role="button" tabindex="0" aria-label="Apple Pay" aria-haspopup="dialog"  style="background-image:-webkit-named-image(apple-pay-logo-white);background-size:100% 50%;background-position:50% 50%;background-repeat:no-repeat" class="w-commerce-commercecartapplepaybutton">
                                <div></div>
                            </a>
                            <a role="button" tabindex="0" aria-haspopup="dialog" data-node-type="commerce-cart-quick-checkout-button" style="display:none" class="w-commerce-commercecartquickcheckoutbutton">
                                <svg class="w-commerce-commercequickcheckoutgoogleicon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16">
                                    <defs>
                                        <polygon id="google-mark-a" points="0 .329 3.494 .329 3.494 7.649 0 7.649">                                        </polygon>
                                        <polygon id="google-mark-c" points=".894 0 13.169 0 13.169 6.443 .894 6.443">                                        </polygon></defs><g fill="none" fill-rule="evenodd">
                                    <path fill="#4285F4" d="M10.5967,12.0469 L10.5967,14.0649 L13.1167,14.0649 C14.6047,12.6759 15.4577,10.6209 15.4577,8.1779 C15.4577,7.6339 15.4137,7.0889 15.3257,6.5559 L7.8887,6.5559 L7.8887,9.6329 L12.1507,9.6329 C11.9767,10.6119 11.4147,11.4899 10.5967,12.0469"></path>
                                    <path fill="#34A853" d="M7.8887,16 C10.0137,16 11.8107,15.289 13.1147,14.067 C13.1147,14.066 13.1157,14.065 13.1167,14.064 L10.5967,12.047 C10.5877,12.053 10.5807,12.061 10.5727,12.067 C9.8607,12.556 8.9507,12.833 7.8887,12.833 C5.8577,12.833 4.1387,11.457 3.4937,9.605 L0.8747,9.605 L0.8747,11.648 C2.2197,14.319 4.9287,16 7.8887,16"></path>
                                    <g transform="translate(0 4)">
                                    <mask id="google-mark-b" fill="#fff">
                                        <use xlink:href="#google-mark-a"></use>
                                    </mask>
                                        <path fill="#FBBC04" d="M3.4639,5.5337 C3.1369,4.5477 3.1359,3.4727 3.4609,2.4757 L3.4639,2.4777 C3.4679,2.4657 3.4749,2.4547 3.4789,2.4427 L3.4939,0.3287 L0.8939,0.3287 C0.8799,0.3577 0.8599,0.3827 0.8459,0.4117 C-0.2821,2.6667 -0.2821,5.3337 0.8459,7.5887 L0.8459,7.5997 C0.8549,7.6167 0.8659,7.6317 0.8749,7.6487 L3.4939,5.6057 C3.4849,5.5807 3.4729,5.5587 3.4639,5.5337" mask="url(#google-mark-b)"></path>
                                    </g>
                                    <mask id="google-mark-d" fill="#fff">
                                        <use xlink:href="#google-mark-c"></use>
                                    </mask>
                                    <path fill="#EA4335" d="M0.894,4.3291 L3.478,6.4431 C4.113,4.5611 5.843,3.1671 7.889,3.1671 C9.018,3.1451 10.102,3.5781 10.912,4.3671 L13.169,2.0781 C11.733,0.7231 9.85,-0.0219 7.889,0.0001 C4.941,0.0001 2.245,1.6791 0.894,4.3291" mask="url(#google-mark-d)"></path>
                                </g>
                                </svg>
                                <svg class="w-commerce-commercequickcheckoutmicrosofticon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16"><g fill="none" fill-rule="evenodd">
                                    <polygon fill="#F05022" points="7 7 1 7 1 1 7 1"></polygon>
                                    <polygon fill="#7DB902" points="15 7 9 7 9 1 15 1"></polygon>
                                    <polygon fill="#00A4EE" points="7 15 1 15 1 9 7 9"></polygon>
                                    <polygon fill="#FFB700" points="15 15 9 15 9 9 15 9"></polygon>
                                </g>
                                </svg>
                                <div>Pay with browser.</div>
                            </a>
                        </div>
                        <a href="/checkout" value="Continue to Checkout" data-node-type="cart-checkout-button" class="w-commerce-commercecartcheckoutbutton cta" data-loading-text="Hang Tight...">
                            Continue to Checkout</a>
                    </div>
                </div>
            </form>
            <div class="w-commerce-commercecartemptystate" style="display: none;">
                <div aria-live="polite" aria-label="This cart is empty">No items found.</div>
            </div>
            <div aria-live="assertive" style="display:none" data-node-type="commerce-cart-error" class="w-commerce-commercecarterrorstate">
                <div class="w-cart-error-msg" >Product is not available in this quantity.</div>
            </div>
        </div>
    </div>
</div>

<div id="footer-container"></div>
</body>
<script>

</script>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
</html>
