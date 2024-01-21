
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618daba" data-wf-site="658e8233ef485db1d618da5a" lang="en">
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
<div style="margin-left: 25px; margin-right: 25px">
    <h3 style="font-size: 30px; color: #d39e00; line-height: 1.4;">
        SMTP프로토콜을 기반으로 이메일 전송 서비스를 구현한 페이지입니다.</h3>
</div>
<div id="top" class="section">
    <div class="main-container w-container">
        <div class="heading-wrap-contact">
            <div class="left-contact-heading">
                <h1 class="heading-contact">Let’s talk about our next project</h1>
            </div><img src="${pageContext.request.contextPath}/resources/static/images/Arrow-Down-Layla-Portfolio-Template.svg" loading="lazy" alt="" class="arrow-contact">
        </div>
        <div class="space-120 contact-space"></div>
        <div class="columns-contact w-row">
            <div class="w-col w-col-2"></div>
            <div class="column-contact-form w-col w-col-6">
                <div class="w-form">
                    <form action="/sendMail"  id="email-form" name="email-form" data-name="Email Form" method="post" data-wf-page-id="658e8234ef485db1d618dab2" data-wf-element-id="1775c4e6-6e5f-2b37-eb4a-985072fd0405">
                        <input type="text" class="input-underline w-input" maxlength="256" name="name" data-name="name" placeholder="Name" id="name">
                        <input type="email" class="input-underline w-input" maxlength="256" name="email" data-name="email" placeholder="Email" id="Email">
                        <input type="text" class="input-underline w-input" maxlength="256" name="company" data-name="company" placeholder="Company" id="Company">
                        <textarea placeholder="Message" maxlength="5000" id="Message" name="message" data-name="message" class="input-underline text-area w-input"></textarea>
                        <input type="submit" value="Submit" data-wait="Please wait..." class="cta big-submit w-button">
                    </form>
                </div>
            </div>
            <div class="w-col w-col-4"></div>
        </div>
    </div>
</div>

<div id="footer-container"></div>
</body>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>

</script>
</html>
