
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618daba" data-wf-site="658e8233ef485db1d618da5a">
<head>
    <meta charset="utf-8">
    <title>Home | Ezra portflio</title>
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
            type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
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

<div id="top" class="section hero-home-a">
    <div class="main-container w-container">
        <h1 style="font-size: 66px;margin-bottom: 20px" id="userId" data-w-id="1b624307-1d06-ef67-6ffe-f2316f1d6c09" class="mega-h1 hero-a-one">
            <c:choose>
                <c:when test="${not empty nickName}">
                    ${nickName}
                </c:when>
                <c:otherwise>
                    Mx Anonymouss
                </c:otherwise>
            </c:choose></h1>
        <div class="heading-wrap-home-a">
            <h1 data-w-id="1b624307-1d06-ef67-6ffe-f2316f1d6c09" class="mega-h1 hero-a-one">Hello!</h1>
            <h1 data-w-id="4e7907f1-8f96-065e-3f30-5c3eec4952e5" class="mega-h1 hero-a-two">I&#x27;m</h1>
            <div data-w-id="c82e8853-e640-fb47-8220-cca6d561e869" class="image-wrap-hero-home-a">
                <img src="../../resources/static/images/Layla-Profile-Image-Webflow-Template_1Layla-Profile-Image-Webflow-Template.webp" loading="eager"
                     sizes="160px" srcset="../../resources/static/images/ezra-image-home.jpg 500w,
           ../../resources/static/images/Layla-Profile-Image-Webflow-Template_1Layla-Profile-Image-Webflow-Template.webp 600w" alt="" class="image-hero-home-a"><img src="../../resources/static/images/Accent-Light.svg" loading="lazy" data-w-id="e2101259-52aa-3db7-1e4a-d27ec6a1a6ed" alt="" class="accent-hero-home-a"></div>
            <h1 data-w-id="d4e4f642-b362-6bc2-6d72-8ed9df441138" class="mega-h1 hero-a-three">Ezra.</h1>
        </div>
        <div class="wrap-subtitle-hero">
            <div class="big-text subtitle-hero">
                Hello everyone! My name is Yejong, but you can call me 'Ezra,' which is my English name.
                I'm Korean and I'm on my way to becoming a developer! Welcome to my portfolio website.
                Let me show you a bit about myself, Take a look around and get to know me better!
            </div>
            <div data-w-id="535f8bd4-5212-e3f0-b2f8-83f6191dbfef" class="overlay-hero-home"></div>
        </div>
        <div class="space-80"></div>
        <div data-w-id="48384ede-b8aa-8f2e-ff44-3fe01884c365" class="wrap-links-hero">
            <div class="left-links-hero-a">
            </div>
            <div class="right-links-hero-a">
                <a href="#" class="big-underline-link w-inline-block">
                    <div>sdjongil@naver.com</div>
                    <div class="underline-master">
                        <div class="undeline-inside"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="section projects-home-a">
    <div class="main-container w-container">
        <div class="wrap-projects-a">
            <div class="w-dyn-list">
                <div role="list" class="list-projects-a w-dyn-items">
                    <div role="listitem" class="w-dyn-item">
                        <div class="wrap-project-item-a">
                            <a href="#" class="link-project-a w-inline-block">
                                <div class="image-wrap-project-a">
                                    <div class="image-project-a">
                                        <img src="../../resources/static/images/ezra-image-home1.jpg"/>
                                    </div>
                                </div>
                                <div class="image-wrap-project-a">
                                    <div class="image-project-a">
                                        <img src="../../resources/static/images/ezra-image-home2.JPG"/>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section moving-text-section">
    <div class="master-moving-text normal-direction">
        <div class="single-moving-text">
            <div class="moving-text">Java / javascript</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Java / javascript</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Java / javascript</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Java / javascript</div>
        </div>
    </div>
    <div class="master-moving-text reverse-master">
        <div class="single-moving-text">
            <div class="moving-text">Oracle / Spring</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Oracle / Spring</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Oracle / Spring</div><img src="../../resources/static/images/Abstract-Light---Layla-Webflow-Template.svg" loading="lazy" style="-webkit-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-moz-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);-ms-transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0);transform:translate3d(0, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0deg) skew(0, 0)" alt="" class="abstract-moving-text">
            <div class="moving-text">Oracle / Spring</div>
        </div>
    </div>
</div>
<div id="footer-container"></div>
</body>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
</html>
