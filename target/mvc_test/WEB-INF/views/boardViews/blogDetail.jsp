<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Tue Jan 02 2024 07:44:22 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="658e8234ef485db1d618dac1" data-wf-site="658e8233ef485db1d618da5a" lang="en">
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
<body>
<div id="navbar-container"></div>
<div style="margin-left: 25px; margin-right: 25px">
    <h3 style="font-size: 30px; color: #d39e00; line-height: 1.4;">
        좋아요는 비동기로이루워지며 좋아요테이블을 통해 중복를 제어합니다.</h3>
</div>
<div id="top" class="section projects-a">
    <div class="main-container w-container">
        <h1 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6"
            style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);
        -moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);
        -ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);
        transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);
        opacity:0">Study Blog</h1>
        <div class="right-contact-heading">
            <a href="/blog/projects" class="big-underline-link w-inline-block">
                <div>Projects</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
            <a href="/blog/" class="big-underline-link w-inline-block">
                <div>Study Blog</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
        </div>
        <div>
            <div class="tag protected" style="display: inline-flex; cursor: pointer;">Edit</div>
            <div class="tag protected" style="display: inline-flex; cursor: pointer;">Delete</div>
        </div>
        <div class="space-40"></div>
        <div class="w-dyn-list">
            <div role="list" class="list-projects-b w-dyn-items">
                <div role="listitem" class="w-dyn-item">
                    <div class="space-40 line-top"></div>
                    <div class="top-wrap-project-b" style="border-bottom: solid white 2px">
                        <div class="text-block-heading-3-styles">${board.boardTitle}</div>
                        <div class="text-block-heading-3-styles servie-projects-b">
                            <fmt:formatDate value="${board.boardCreatedTime}" pattern="yy-MM-dd" />
                        </div>
                    </div>
                    <div class="link-project-b w-inline-block">
                        <div>
                            <c:forEach items="${files}" var="file">
                                <div>
                                    <img src="${pageContext.request.contextPath}/resources/static/userFiles/${file.fileName}.${file.fileExtension}" alt="Project Image"/>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <p class="no-margins">${board.boardContents}</p>
                </div>
                <div style="display: flex; justify-content: space-between;">
                    <div id="likeIt" class="tag" style="width: 20%; cursor: pointer;
                ${userAlreadyLiked ? 'background-color: darkgray;' : ''}"${userAlreadyLiked ? 'disabled' : ''}>Like
                        <div id="likeNum" style="display: flex;margin-left: 3px;">${board.boardHits}</div>
                    </div>
                    <div style="display: inline-block; text-align: center; flex-grow: 1;">Views : ${board.boardViews}</div>
                    <div data-board-writer="${board.boardWriter}" style="display: inline-block; text-align: right;"> By : ${board.boardWriter}</div>
                    <div data-board-id="${board.boardId}" style="display: none;">${board.boardId}</div>
                    <div id="viewer" style="display: none">${nickName}</div>
                </div>
                <div class="space-40 line-bottom"></div>
            </div>
        </div>
    </div>
</div>
<div class="space-40"></div>
<div id="footer-container"></div>

</body>
<style>
    .comment-container {
        display: flex;
        padding: 10px;
    }

    .user-image img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        margin-right: 10px;
    }

    .comment-box {
        flex-grow: 2;
    }


    .line-bottom{
        height: 1px;
        border-top: 2px solid white;
    }
    .disabled {
        background-color: darkgray;
        pointer-events: none;
        cursor: default;
    }


</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>
    var boardWriter = document.querySelector('[data-board-writer]').getAttribute('data-board-writer');
    var boardId = document.querySelector('[data-board-id]').getAttribute('data-board-id');
    var viewer = document.getElementById("viewer").textContent;
    document.getElementById('likeIt').addEventListener('click', function() {
        if(viewer === 'anonymous'){
            alert('Please login first');
            return
        }
        if (this.hasAttribute('disabled')) {
            alert('You already liked it.');
        } else {
            fetch("/blog/updateLike?nick="+viewer+"&boardId="+boardId, {
                method: 'GET'
            }).then(response => {
                if (!response.ok) {
                    throw new Error('network error');
                }
                return response.text();
            }).then(data => {
                if (data === 'success') {
                    let likesCountElement = document.getElementById('likeNum');
                    let likesCount = parseInt(likesCountElement.textContent);
                    likesCountElement.textContent = likesCount + 1;
                    this.classList.add('disabled');
                }
            }).catch(error => {
                console.error('Error:', error);
            });
        }
    });
    let protects = [];
    protects = document.getElementsByClassName("protected")
    protects[0].addEventListener('click', function (){
        window.location.href = "/protected/?nick="+boardWriter+"&boardId="+boardId+"&forWhat=Edit post";
    })
    protects[1].addEventListener('click', function (){
        window.location.href = "/protected/?nick="+boardWriter+"&boardId="+boardId+"&forWhat=Delete post";
    })

</script>
<script>
    let status = "<%= request.getAttribute("status")%>";
    if (status === 'passWrong') {
        alert('Please check your password');
    }
</script>
</html>
