<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
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
<body>
<div id="navbar-container"></div>

<div id="top" class="section projects-a">
    <div class="main-container w-container">
        <h1 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0">
            My Study blog</h1>
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
            <a href="/blog/drawing" class="big-underline-link w-inline-block">
                <div>Drawing Board</div>
                <div class="underline-master">
                    <div class="undeline-inside"></div>
                </div>
            </a>
        </div>
        <div class="space-40"></div>
        <div data-w-id="754fcd17-56b8-7a50-2cb2-605d67e10a21" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="wrap-filers">
            <div class="w-dyn-list">
                <div role="list" class="list-filters w-dyn-items">
                    <div role="listitem" class="w-dyn-item">
                        <a href="#" class="link-filter"></a>
                    </div>
                </div>
                <div>
                    <div class="tag" style="display: inline-flex; cursor: pointer;">Write</div>
                    <div class="tag" style="display: inline-flex; cursor: pointer;">Order by</div>
                </div>
            </div>
        </div>
        <div class="space-120 projects-space" style="display: flex">
            <div>
                <h4>Title</h4>
            </div>
            <div>
                <h4>Writer</h4>
            </div>
            <div>
                <h4>date</h4>
            </div>
            <div>
                <h4>hits</h4>
            </div>
            <div>
                <h4>views</h4>
            </div>
        </div>
        <div class="w-dyn-list">
            <div role="list" class="list-projects-b w-dyn-items">
                <div role="listitem" class="w-dyn-item">
                    <div class="link-project-b w-inline-block">
                        <div class="divider-project-b"></div>
                        <table class="blog-board-table">
                            <tbody>
                                <c:forEach items="${boardList}" var="board" varStatus="status">

                                    <tr id="userBoard" style="background-color:${status.index % 2 == 0 ? "#000000;" : "#101005;"}; display: flex;
                                            margin-top: 5px; padding: 5px">
                                        <td><a style="text-decoration: none;" href="/board?id=${board.id}">${board.boardTitle}</a></td>
                                        <td>${board.boardWriter}</td>
                                        <td>
                                            <fmt:formatDate value="${board.boardCreatedTime}" pattern="yy-MM-dd" />
                                        </td>
                                        <td>${board.boardHits}</td>
                                        <td>${board.views}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="footer-container"></div>
</body>
<style>
    .projects-space > div:first-child{
        flex: 5;
    }
    .projects-space > div{
        flex: 1;
    }
    #userBoard > td:first-child{
        text-align: center;
        flex: 5;
    }
    #userBoard > td{
        flex: 1;
    }
</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>

</html>