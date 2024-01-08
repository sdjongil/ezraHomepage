<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Tue Jan 02 2024 07:44:22 GMT+0000 (Coordinated Universal Time)  -->
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
                <h1 id="welcome" class="heading-contact">Already a member? Log in here.</h1>
            </div>
            <div class="right-contact-heading">
                <a href="/member/join" class="big-underline-link w-inline-block">
                    <div>Sign up</div>
                    <div class="underline-master">
                        <div class="undeline-inside"></div>
                    </div>
                </a>
                <a id="logOutLink" href="#" class="big-underline-link w-inline-block">
                    <div>Logout</div>
                    <div class="underline-master">
                        <div class="undeline-inside"></div>
                    </div>
                </a>
                <a href="/member/myprofile" class="big-underline-link w-inline-block">
                    <div>My Profile</div>
                    <div class="underline-master">
                        <div class="undeline-inside"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="space-120 contact-space"></div>
        <div class="columns-contact w-row">
            <div class="w-col w-col-2"></div>
            <div class="column-contact-form w-col w-col-6">
                <div class="w-form">
                    <div >
                        <div id="check-login" style="text-align: center;"> </div>
                    </div>
                    <form id="login-form" action="/member/login" method="post">
                        <input id="memberEmail" type="email" class="input-underline w-input" maxlength="30"
                               name="memberEmail" placeholder="Email" autocomplete="off">
                        <input type="password" class="input-underline w-input" maxlength="30"
                               name="memberPassword" placeholder="Password">
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
<script>
    var nickName = "<%= request.getAttribute("nickName") %>";

    // 'anonymous'일 경우 경고창 표시
    if (nickName === 'anonymous') {
        alert('Please log in first');
    }
</script>
<script>
    document.getElementById('logOutLink').addEventListener('click', function(event) {
        event.preventDefault(); // 기본 링크 동작 방지
        // AJAX 요청 생성 및 전송
        fetch('/member/logout', { method: 'GET' })
            .then(response => {
                if (response.ok) {
                    sessionStorage.setItem('boardNo', '1');
                    window.location.href = '/';
                } else {
                    console.error('Logout failed');
                }
            })
            .catch(error => console.error('Error:', error));
    });


    $('#login-form').submit(function(event) {
        event.preventDefault();
        let formData = $(this).serialize();
        let checkResult = document.getElementById("check-login")
        $.ajax({
            type: 'POST',
            url: '/member/login',
            data: formData,
            success: function(response) {
                if(response=="ok"){
                    sessionStorage.setItem('boardNo', '1');
                    window.location.href = '/';
                }else{
                    checkResult.style.color="red"
                    checkResult.innerText = "Incorrect username or password. Please check your entries and try again."
                }
            },
            error: function(error) {
                console.log("login error : ",error)
                checkResult.style.color="red"
                checkResult.innerText = "Incorrect username or password. Please check your entries and try again."
            }
        });
    });
    window.onload = function() {
        const urlParams = new URLSearchParams(window.location.search);
        const welcome = document.getElementById("welcome")
        if(urlParams.get('signup') !== null) {
            welcome.innerText = urlParams.get('signup');
            alert('회원가입이 완료되었습니다. 로그인해주세요.');

        }
    };


</script>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
</html>
