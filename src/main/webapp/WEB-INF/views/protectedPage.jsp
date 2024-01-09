
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618daba" data-wf-site="658e8233ef485db1d618da5a">
<head>
    <meta charset="utf-8">
    <title>Protected | Ezra portfolio</title>
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
    <div id="top" class="utility-page-wrap">
        <div class="utility-page-content w-password-page w-form">
            <form action="" method="post" id="email-form" name="email-form" data-name="Email Form" class="utility-page-form w-password-page">
                <img src="${pageContext.request.contextPath}/resources/static/images/lock.svg" alt="" class="icon-lock">
                <h2>Protected Page</h2>
                <div class="form-wrap-password">
                    <label for="pass" class="w-password-page">Password</label>
                    <input type="password" class="input-field w-password-page w-input" autofocus="true" maxlength="30"
                           name="pass"  placeholder="Enter your login password" id="pass">
                    <input id="submitPass" type="submit" value="Submit" class="cta w-password-page w-button">
                </div>
                <div style="margin-top: 20px;" id="info">
                    <div>
                        <div>Post Number : </div>
                        <div id="boardId">${boardDto.id}</div>
                    </div>
                    <div>
                        <div>Writer : </div>
                        <div id="boardWriter">${boardDto.boardWriter}</div>
                    </div>
                    <div>
                        <div></div>
                        <div id="forWhat">${forWhat}</div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<div id="footer-container"></div>
</body>
<style>
    #info{
        text-align: center;
    }
    #info > div{
        display: flex;
        justify-content: center;
    }
    #info > div > div{
        display: flex;
    }
</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>
    document.getElementById("submitPass").addEventListener('click', function (event){
        event.preventDefault()
        let formData = new FormData();
        let forWhat = document.getElementById("forWhat").textContent;
        let boardWriter = document.getElementById("boardWriter").textContent;
        let boardId = document.getElementById("boardId").textContent;
        let pass = document.getElementById("pass").value;
        formData.append("forWhat", forWhat);
        formData.append("boardWriter", boardWriter);
        formData.append("boardId", boardId);
        formData.append("pass", pass);
        fetch("/blog/editBlog", {
            method : "post",
            body : formData,
        }).then(response =>{
            if(!response.ok){
                alert("Please try again")
                throw response;
            }
            return response.json();
        }).then(data => {
            if(data.status === 'success'){
                alert("Success")
            }else if(data.status === 'passWrong'){
                alert("Please check your password")
            }else if(data.status ===  'notOwner'){
                alert("You can only change(delete) your own posts.")
            }else if(data.status ===  'edit'){

            } else{
                console.log(data.status)
                alert("Please try again")
            }
            window.location.href = data.redirect;
        }).catch(error =>{
            window.location.href = error.redirect;
        })
    })
</script>
</html>
