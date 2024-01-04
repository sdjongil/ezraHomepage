<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html data-wf-page="658e8234ef485db1d618dab2" data-wf-site="658e8233ef485db1d618da5a">
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
        <div class="heading-wrap-contact">
            <div class="left-contact-heading">
                <h1 class="heading-contact" style="padding-left: 8%;">
                    Start your new journey, join now!</h1>
            </div>
            <div class="right-contact-heading">
                <img src="../../../resources/static/images/ezra-image-join2.JPG" style="height: 100%; padding-right: 5%;" alt="join picture"/>
            </div>
        </div>
        <div class="space-120 contact-space" style="height: 80px">
        </div>
        <div class="columns-contact w-row">
            <div class="w-col w-col-2"></div>
            <div class="column-contact-form w-col w-col-6">
                <div class="w-form">
                    <div >
                        <div id="check-result" style="text-align: center;"> </div>
                    </div>
                    <form id="join" action="/member/save" method="post" >
                        <input type="text" class="input-underline w-input" maxlength="18"
                               name="memberName" placeholder="Name" autocomplete="off">
                        <input id="memberEmail" type="email" class="input-underline w-input" maxlength="30"
                               name="memberEmail" placeholder="Email" autocomplete="off"  onblur="emailCheck()">
                        <input type="password" class="input-underline w-input" maxlength="30"
                               name="memberPassword" placeholder="Password">
                        <input type="password" class="input-underline w-input" maxlength="30"
                               placeholder="Confirm  Password">
                        <input type="text" class="input-underline w-input" maxlength="30"
                               name="memberMobile" placeholder="Mobile" autocomplete="off">
                        <div class="agreement">
                            <label for="agree">"I have read and agree to
                                <a href="/member/policy">the Terms and Conditions</a>
                                regarding the collection and use of personal information.
                                <input type="checkbox" id="agree" name="agreement" required>
                            </label>

                        </div>
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
<style>
    #agree {
        margin-left: 5px;
        transform: scale(1.8);
    }

</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>
    const emailCheck = () => {
        const email = document.getElementById("memberEmail").value;
        const checkResult = document.getElementById("check-result");
        $.ajax({
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function(res) {
                if (res == "ok") {
                    checkResult.style.color = "green";
                    checkResult.innerHTML = "This email can be used";
                } else {
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "This username already exists.";
                }
            },
            error: function(err) {
                console.log("에러발생", err);
            }
        });
    }
</script>

</html>