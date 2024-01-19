<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
        자바스크립트로 정규식을 사용하였고, 비동기 통신을 통해 중복검사 등을 실시하며 이 것들에 반할 경우
    경고문을 띄우도록 코딩했습니다.<br>빠른 로그인을 원한다면 guest@naver.com/123123123a로 로그인해보세요!</h3>
</div>
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
                        <div id="email-check-result" class="checks" style="text-align: center;"> </div>
                        <div id="phone-check-result" class="checks" style="text-align: center;"> </div>
                        <div id="pass-check-result" class="checks" style="text-align: center;"> </div>
                        <div id="nick-check-result" class="checks" style="text-align: center;"> </div>
                        <div id="name-check-result" class="checks" style="text-align: center;"> </div>
                    </div>
                    <form id="join" action="/member/join" method="post"  onsubmit="return validateForm()">
                        <input id="memberName" type="text" class="input-underline w-input" maxlength="20"
                               name="memberName" placeholder="Name" autocomplete="off" onblur="nameCheck()">
                        <input id="memberEmail" type="email" class="input-underline w-input" maxlength="30"
                               name="memberEmail" placeholder="Email" autocomplete="off"  onblur="emailCheck()">
                        <input id="memberNickName" type="text" class="input-underline w-input" maxlength="20"
                               name="memberNickname" placeholder="NickName" autocomplete="off" onblur="nickCheck()">
                        <h5>Your nickname must be a English letters of 4 to 20.</h5>
                        <input id="password" type="password" class="input-underline w-input" maxlength="25"
                               name="memberPassword" placeholder="Password">
                        <h5>Your password must be a combination of 8 to 25 English letters and numbers.</h5>
                        <input id="passwordCon" type="password" class="input-underline w-input" maxlength="25"
                               placeholder="Confirm  Password" onblur="checkPass()">
<%--                        <input id="phoneNumber" type="text" class="input-underline w-input" maxlength="13"--%>
<%--                               name="memberMobile" placeholder="Mobile (010-1234-1234)" autocomplete="off" onblur="phoneCheck()">--%>
                        <div class="agreement">
                            <label for="agree">"I have read and agree to
                                <a href="/member/policy">the Terms and Conditions</a>
                                regarding the collection and use of personal information.
                                <input type="checkbox" id="agree" name="agreement" required>
                            </label>

                        </div>
                        <input type="submit" value="Submit" data-wait="Please wait..."
                               class="cta big-submit w-button">
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
    .checks{
        color: red;
    }

</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>
    let isOkName = false
    let isOkEmail = false
    let isOkPass = false
    let isOkNick = false
    const expName = /^[A-Za-z]{4,20}$/;
    const nameCheck = () => {
        const name = document.getElementById("memberName").value;
        const checkNameResult = document.getElementById("name-check-result");
        if(!expName.test(name)){
            checkNameResult.innerText = "Your name must be a English letters of 4 to 20."
            isOkName = false;
        }else {
            checkNameResult.innerText = ""
            isOkName = true;
        }
    }
    const nickCheck = () => {
        const nick = document.getElementById("memberNickName").value;
        const checkNameResult = document.getElementById("nick-check-result");
        if(!expName.test(nick)){
            checkNameResult.innerText = "Your nickname must be a English letters of 4 to 20."
            isOkNick = false;
        }else {
            $.ajax({
                type:"post",
                url: "/member/nick-check",
                data:{
                    "nickName" : nick
                },
                success: function (res){
                    if (res=="ok"){
                        checkNameResult.innerText = ""
                        isOkNick = true;
                    }else{
                        checkNameResult.innerHTML = "This nickname already exists.";
                        isOkNick = false;
                    }
                },error(error){
                    console.log("에러발생", err);
                }
            });
        }
    }
    const emailCheck = () => {
        const email = document.getElementById("memberEmail").value;
        const checkResult = document.getElementById("email-check-result");
        $.ajax({
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function(res) {
                if (res == "ok") {
                    checkResult.innerHTML = "";
                    isOkEmail = true;
                } else {
                    checkResult.innerHTML = "This username already exists.";
                    isOkEmail = false;
                }
            },
            error: function(err) {
                console.log("에러발생", err);
            }
        });
    }
    const checkPass = () =>{
        const pass = document.getElementById("password").value;
        const passCon = document.getElementById("passwordCon").value;
        const passCheck = document.getElementById("pass-check-result");
        const expPass = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
        if(pass !== passCon){
            passCheck.innerHTML = "The passwords don't match.";
            isOkPass = false;
        }else {
            if(!expPass.test(pass)){
                passCheck.innerHTML = "Your password must be a combination of 8 to 25 English letters and numbers.";
                isOkPass = false;
            }else{
                isOkPass = true;
                passCheck.innerHTML = "";
            }
        }
    }
    function validateForm() {
        if (isOkNick && isOkName && isOkPass && isOkEmail) {
            return true;
        } else {
            alert("Please check your form again");
            return false;
        }
    }
</script>

</html>