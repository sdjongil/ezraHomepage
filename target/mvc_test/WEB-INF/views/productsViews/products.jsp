<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div style="margin-left: 25px; margin-right: 25px">
    <h3 style="font-size: 30px; color: #d39e00; line-height: 1.4;">
        샵 페이지는 나를 알리는 블로그로서 저의 개발자 이외의 저의 활동 등을 상품으로 넣어봤습니다.</h3>
</div>
<div id="top" class="section">
    <div class="main-container w-container">
        <h1 data-w-id="023a4ddb-7d6d-549a-4046-d107cd1afb74" style="transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); opacity: 1; transform-style: preserve-3d;">Ezra Shop</h1>
        <h4>For projects,Please check out the project board in blog</h4>
        <div class="space-40"></div>
        <div class="w-dyn-list">
            <div role="list" class="grid-thirds products-grid w-dyn-items">
                <c:forEach var="product" items="${productsList}">
                    <div role="listitem" class="w-dyn-item">
                        <a href="/product/productDetail?id=${product.productId}" class="link-product w-inline-block">
                            <div class="image-wrap-product">
                                <div style="background-image: url('../../../resources/static/images/${product.image}'); transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d;" class="image-product">
                                </div>
                            </div>
                            <div class="master-product-details">
                                <div class="left-product-details">
                                    <div class="text-block-heading-3-styles">${product.name}</div>
                                </div>
                                <div class="right-product-details">
                                    <div class="compare-price w-dyn-bind-empty"> </div>
                                    <div class="text-block-heading-3-styles">
                                        $&nbsp;${product.price}&nbsp;/year</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
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
