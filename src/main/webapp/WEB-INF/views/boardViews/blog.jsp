<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Fri Dec 29 2023 08:27:37 GMT+0000 (Coordinated Universal Time)  -->
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
        제가 배운 기술을 정리하고, 기록으로 남기는 공간입니다. 페이징에 대한 정보는 클라이언트 세션에 저장합니다.
     정렬, 검색 기능이있습니다.</h3>
</div>
<div id="top" class="section projects-a">
    <div class="main-container w-container">
        <h1 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0">
            Study Blog</h1>
        <h3 data-w-id="16cfbc97-3818-6f4c-23d0-e154a4034af6" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0">
            You can post it if you are sign in</h3>
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
        <div class="space-40"></div>
        <div data-w-id="754fcd17-56b8-7a50-2cb2-605d67e10a21" style="-webkit-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="wrap-filers">
            <div class="w-dyn-list">
                <div class="optionBox" style="display: flex">
                    <div>
                        Sort
                    </div>
                    <div id="orderBy" class="tag" style="cursor: pointer;">Order by</div>
                    <div id="options"  style="display: none;">
                        <div class="tag" style="cursor : pointer;" on="orderBy('time')">Time</div>
                        <div class="tag" style="cursor : pointer;" on="orderBy('likes')">Likes</div>
                        <div class="tag" style="cursor : pointer;" on="orderBy('views')">Views</div>
                    </div>
                    <div id="Sort" class="tag" style="cursor: pointer;">Sort</div>
                    <div id="SortOptions"  style="display: none;">
                        <div class="tag" style="cursor : pointer;" on="sortBy('DESC')">DESC</div>
                        <div class="tag" style="cursor : pointer;" on="sortBy('ASC')">ASC</div>
                    </div>
                    <div class="tag" id="searchButton" style="margin-left: auto; cursor:pointer;">
                        Go
                    </div>
                </div>
            </div>
        </div>
        <div class="optionBox" style="margin-top: 15px;">
            <div style="margin-left: auto;">
                <div>
                    <input id="searchTitle" type="text" class="input-underline" name="title" style="height: 50px; font-size: 25px; margin-bottom: 12px;"
                           placeholder="Search by title">
                </div>
                <div>
                    <a id="searchTitleButton" href="#" class="cta w-button">Search</a>
                </div>
            </div>
        </div>

        <div class="space-120 projects-space" style="display: flex">
            <div><h4>Category</h4></div>
            <div id="title"><h4>Title</h4></div>
            <div><h4>Writer</h4></div>
            <div><h4>date</h4></div>
            <div><h4>hits</h4></div>
            <div><h4>views</h4></div>
        </div>
        <div class="w-dyn-list">
            <div role="list" class="list-projects-b w-dyn-items">
                <div role="listitem" class="w-dyn-item">
                    <div class="link-project-b w-inline-block">
                        <div class="divider-project-b"></div>
                        <table class="blog-board-table">
                            <tbody>
                                <c:forEach items="${boardList}" var="board" varStatus="status">
                                    <tr class="userBoard" style="background-color:${status.index % 2 == 0 ? "#000000;" : "#101005;"}; display: flex;
                                            margin-top: 5px; padding: 5px">
                                        <td>${board.category}</td>
                                        <td id="userTitle"><a style="text-decoration: none;" href="/blog/detail?id=${board.id}">${board.boardTitle}</a></td>
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
                        <div id="pagination" ></div>
                        <a href="/blog/writeBlog" style="text-decoration: none">
                            <div class="tag" style="display:flex; cursor: pointer;">Write</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer-container"></div>
</body>
<style>
    .optionBox{
        display: flex;
    }
    .optionBox > div{
        display: inline-flex;
        margin: 2px;
    }
    .projects-space > div {
        flex: 1;
    }
    #title{
        flex: 4;
    }
    .userBoard > td{
        flex: 1;
        font-size: 16px;
    }
    #userTitle{
        flex: 4;
        font-size: 20px;
    }
    #pagination {
        text-align: center; /* 텍스트를 중앙 정렬 */
        margin-top: 20px; /* 상단 여백 추가 */
    }

    .page-link {
        margin: 0 5px; /* 링크 간의 간격 */
        padding: 5px 10px; /* 링크 패딩 */
        border: 1px solid #ddd; /* 테두리 스타일 */
        color: #333; /* 텍스트 색상 */
        text-decoration: none; /* 밑줄 제거 */
    }

    .active {
        margin-left: 30px;
        margin-right: 30px;
    }

</style>
<script src="${pageContext.request.contextPath}/resources/static/js/baseForm.js"></script>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=658e8233ef485db1d618da5a"
        type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/webflow.js" type="text/javascript"></script>
<script>
    document.getElementById("searchTitleButton").addEventListener("click", function (){
        let searchTitle = document.getElementById("searchTitle").value;
        window.location.href = "/blog/searchByTitle?title="+searchTitle;
    })
</script>
<script type="module">
    import { PageDto } from "../../../resources/static/js/PageDto.js";

    //페이징
    let pageDto;
    if(sessionStorage.getItem('pageDto')===null){
        fetch('/blog/blogTotal').then(response =>{
            if(!response.ok){
                throw new Error('Network response error')
            }
            return response.text()
        }).then(count =>{
            pageDto = new PageDto(count)
            pageDto.calculatePageDto()
            createPagination(pageDto);
            sessionStorage.setItem("pageDto", JSON.stringify(pageDto))
        }).catch(error=>{
            console.log("Fetch error : " + error);
        })
    }else{
        let storedData = sessionStorage.getItem("pageDto");
        let data = JSON.parse(storedData);
        pageDto = new PageDto(data.totalCount);
        Object.assign(pageDto, data); // 저장된 데이터를 pageDto 인스턴스에 복사
        createPagination(pageDto);
    }
    function createPagination(pageDto) {
        const paginationContainer = document.getElementById('pagination');
        addPageLink(paginationContainer, 1, true);
        for (let i = pageDto.startPage; i <= pageDto.endPage; i++) {
            addPageLink(paginationContainer, i, false);
        }
        addPageLink(paginationContainer, pageDto.totalPage, true);
    }
    function addPageLink(container, pageNumber, isFirst) {
        const pageLink = document.createElement('a');
        pageLink.onclick=(event)=>{
            event.preventDefault();
            pageDto.page = pageNumber
            pageDto.calculatePageDto()
            sessionStorage.setItem("pageDto", JSON.stringify(pageDto))
            const href = "/blog/?startNo="+pageDto.startNo+"&endNo="+pageDto.endNo+"&perPageNum="+pageDto.perPageNum+
                "&searchType="+pageDto.searchType+"&searchKeyword="+pageDto.searchKeyword+"&orderBy="+
                pageDto.orderBy+"&order="+pageDto.order;
            window.location.href = href;
        }
        pageLink.href = "#";
        pageLink.textContent = pageNumber;

        if(isFirst){
            pageLink.className = 'page-link active';
        }else{
            pageLink.className = 'page-link';
        }
        container.appendChild(pageLink);
    }

    //옵션 토글 및 기능
    var orderSrot = document.getElementById("Sort");
    var order = document.getElementById("orderBy");
    document.addEventListener('DOMContentLoaded', () => {
        document.querySelectorAll('.tag').forEach(tag => {
            tag.addEventListener('click', (event) => {
                switch (tag.id) {
                    case 'orderBy':
                        toggleOptions();
                        break;
                    case 'Sort':
                        toggleSortOptions();
                        break;
                }
                if (tag.hasAttribute('on')) {
                    event.preventDefault()
                    const functionName = tag.getAttribute('on').split('(')[0];
                    const parameter = tag.getAttribute('on').split('\'')[1];
                    switch (functionName) {
                        case 'orderBy':
                            orderBy(parameter);
                            break;
                        case 'sortBy':
                            sortBy(parameter);
                            break;
                    }
                }
            });
        });
        document.getElementById("searchButton").addEventListener('click', function (){
            sessionStorage.setItem("pageDto", JSON.stringify(pageDto))
            const href = "/blog/?startNo="+pageDto.startNo+"&endNo="+pageDto.endNo+"&perPageNum="+pageDto.perPageNum+
                "&searchType="+pageDto.searchType+"&searchKeyword="+pageDto.searchKeyword+"&orderBy="+
                pageDto.orderBy+"&order="+pageDto.order;
            window.location.href = href;
        })
    });
    function toggleOptions() {
        var options = document.getElementById("options");
        options.style.display = (options.style.display === "none" ? "block" : "none");
    }
    function toggleSortOptions(){
        var sortOptions = document.getElementById("SortOptions");
        sortOptions.style.display = (sortOptions.style.display === "none" ? "block" : "none")
    }
    function orderBy(option) {
        order.innerText = option;
        if(option === 'time'){
            option = 'boardcreatedtime';
        }else if(option === 'likes'){
            option = 'boardHits'
        }
        pageDto.orderBy = option;
        document.getElementById("options").style.display = "none";
    }
    function sortBy(option) {
        orderSrot.innerText = option;
        pageDto.order = option;
        document.getElementById("SortOptions").style.display = "none";
    }
</script>

</html>