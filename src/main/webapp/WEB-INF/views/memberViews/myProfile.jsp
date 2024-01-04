<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html data-wf-page="658e8234ef485db1d618dac1" data-wf-site="658e8233ef485db1d618da5a">
<head>
    <meta charset="utf-8">
    <title>Blog | Ezra Folio</title>
    <link href="${pageContext.request.contextPath}/resources/static/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/hans-wondrous-site-b14015.webflow.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/static/css/nav.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",
    ("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="${pageContext.request.contextPath}/resources/static/images/favicon.svg" rel="shortcut icon" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/resources/static/images/webclip.svg" rel="apple-touch-icon">
</head>
    <title>Title</title>
</head>
<body>
<div id="navbar-container"></div>
<div class="space-120 contact-space"></div>

<div class="w-commerce-commercelayoutcontainer main-container w-container">
<form data-node-type="commerce-checkout-shipping-address-wrapper" class="w-commerce-commercecheckoutshippingaddresswrapper">
    <div class="w-commerce-commercecheckoutblockheader block-header">
        <h4 aria-level="2">My profile</h4>
        <div id="userEmail">dfdsd</div>
    </div>
    <fieldset class="w-commerce-commercecheckoutblockcontent block-content">
        <label for="userName" class="w-commerce-commercecheckoutlabel field-label">Name</label>
        <input id="userName" type="text" class="w-commerce-commercecheckoutshippingfullname input-field checkout" name="name" required="">
        <label for="age" class="w-commerce-commercecheckoutlabel field-label">Date of birth</label>
        <input id="age" type="text" class="w-commerce-commercecheckoutshippingstreetaddress input-field checkout" name="address_line1" required="">
        <input type="text" aria-label="" class="w-commerce-commercecheckoutshippingstreetaddressoptional input-field checkout" name="address_line2">
        <div class="w-commerce-commercecheckoutrow">
            <div class="w-commerce-commercecheckoutcolumn"><label for="" class="w-commerce-commercecheckoutlabel field-label">City *</label>
                <input type="text" class="w-commerce-commercecheckoutshippingcity input-field checkout" name="address_city" required=""></div>
            <div class="w-commerce-commercecheckoutcolumn"><label for="" class="w-commerce-commercecheckoutlabel field-label">State/Province</label>
                <input type="text" class="w-commerce-commercecheckoutshippingstateprovince input-field checkout" name="address_state"></div>
            <div class="w-commerce-commercecheckoutcolumn"><label for="" class="w-commerce-commercecheckoutlabel field-label">Zip/Postal Code *</label>
                <input type="text" data-node-type="commerce-checkout-shipping-zip-field" class="w-commerce-commercecheckoutshippingzippostalcode input-field checkout" name="address_zip" required="">
            </div>
        </div>
    </fieldset>
</form>
<div class="w-commerce-commercelayoutsidebar" style="margin-left: 10px">
    <div class="w-commerce-commercecheckoutordersummarywrapper">
        <div class="w-commerce-commercecheckoutsummaryblockheader block-header">
            <h4 aria-level="2">Order Summary</h4>
        </div>
        <fieldset class="w-commerce-commercecheckoutblockcontent block-content">
            <div class="w-commerce-commercecheckoutsummarylineitem">
                <div>Subtotal</div>
                <div></div>
            </div>
            <script type="text/x-wf-template" id="wf-template-63c54fa53b2b76a8c0c240be0000000000a0">%3Cdiv%20class%3D%22w-commerce-commercecheckoutordersummaryextraitemslistitem%22%3E%3Cdiv%3E%3C%2Fdiv%3E%3Cdiv%3E%3C%2Fdiv%3E%3C%2Fdiv%3E</script>
            <div class="w-commerce-commercecheckoutordersummaryextraitemslist" data-wf-collection="database.commerceOrder.extraItems" data-wf-template-id="wf-template-63c54fa53b2b76a8c0c240be0000000000a0">
                <div class="w-commerce-commercecheckoutordersummaryextraitemslistitem">
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div class="w-commerce-commercecheckoutsummarylineitem">
                <div>Total</div>
                <div class="w-commerce-commercecheckoutsummarytotal"></div>
            </div>
        </fieldset>
    </div>
    <a href="#" value="Place Order" data-node-type="commerce-checkout-place-order-button" class="w-commerce-commercecheckoutplaceorderbutton cta" data-loading-text="Placing Order...">Place Order</a>
    <div data-node-type="commerce-checkout-error-state" style="display:none" class="w-commerce-commercecheckouterrorstate">
        <div aria-live="polite" class="w-checkout-error-msg" data-w-info-error="There was an error processing your customer info. Please try again, or contact us if you continue to have problems." data-w-shipping-error="Sorry. We can’t ship your order to the address provided." data-w-billing-error="Your payment could not be completed with the payment information provided. Please make sure that your card and billing address information is correct, or try a different payment card, to complete this order. Contact us if you continue to have problems." data-w-payment-error="There was an error processing your payment. Please try again, or contact us if you continue to have problems." data-w-pricing-error="The prices of one or more items in your cart have changed. Please refresh this page and try again." data-w-minimum-error="The order minimum was not met. Add more items to your cart to continue." data-w-extras-error="A merchant setting has changed that impacts your cart. Please refresh and try again." data-w-product-error="One or more of the products in your cart have been removed. Please refresh the page and try again." data-w-invalid-discount-error="This discount is invalid." data-w-expired-discount-error="This discount is no longer available." data-w-usage-reached-discount-error="This discount is no longer available." data-w-requirements-not-met-error="">There was an error processing your customer info. Please try again, or contact us if you continue to have problems.</div>
    </div>
</div>
</div>
<div id="footer-container"></div>

</body>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>

</html>
