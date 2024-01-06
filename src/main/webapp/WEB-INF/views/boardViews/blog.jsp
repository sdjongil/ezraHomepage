<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                    <a href="/blog/writeBlog"><div class="tag" style="display: inline-flex; cursor: pointer;">Write</div></a>
                    <div class="tag" style="display: inline-flex; cursor: pointer;">Order by</div>
                </div>
            </div>
        </div>
        <div class="space-120 projects-space" style="display: flex">
            <div>
                <h4>Category</h4>
            </div>
            <div id="title">
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

                                    <tr class="userBoard" style="background-color:${status.index % 2 == 0 ? "#000000;" : "#101005;"}; display: flex;
                                            margin-top: 5px; padding: 5px">
                                        <td>${board.category}</td>
                                        <td id="userTitle"><a style="text-decoration: none;" href="/board?id=${board.id}">${board.boardTitle}</a></td>
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
                        <div id="pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="footer-container"></div>
</body>
<style>

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
    let boardNo;
    if(sessionStorage.getItem('boardNo')===null){
        boardNo = '1';
    }else{
        boardNo = sessionStorage.getItem('boardNo');
    }
    let pageDto = {
        startPage: null, //현재페이지 기준 게시판 시작 페이지
        endPage: null,  //현재페이지 기준 게시판 끝 페이지
        perPageNum: 5, //한페이지당 게시물 수
        maxPage : 5,
        page: boardNo,  // 현재 페이지
        totalCount: sessionStorage.getItem("total"),  //총 게시물수
        totalPage: null, //총 게시판 마지막 페이지
        startNo: null,  //현재 목록에서 시작 게시물 id
        endNo: null,  //현재 목록에서 끝 게시물 id
        prev: null, //다음 페이지
        next: null, //이전 페이지
        searchType: "category", //서치 칼럼
        orderBy: "boardcreatedtime", //정렬기준
        order: "desc", //정렬순서 (오름,내림)
        searchKeyword: "%" //서치 내용
    };

    calculatePageDto(pageDto);

    function calculatePageDto(pageDto) {
        // 전체 페이지 수 계산
        pageDto.totalPage = Math.ceil(pageDto.totalCount / pageDto.perPageNum);
        // 현재 페이지 주변의 페이지 범위 계산
        let halfWindow = Math.floor(pageDto.maxPage / 2);
        pageDto.startPage = Math.max(1, pageDto.page - halfWindow);
        pageDto.endPage = Math.min(pageDto.startPage + pageDto.maxPage - 1, pageDto.totalPage);
        // 시작 페이지 조정
        if (pageDto.endPage - pageDto.startPage < pageDto.maxPage - 1) {
            pageDto.startPage = Math.max(1, pageDto.endPage - pageDto.maxPage + 1);
        }
        // 현재 목록에서 게시물 ID 범위 계산
        pageDto.startNo = (pageDto.page - 1) * pageDto.perPageNum + 1;
        pageDto.endNo = Math.min(pageDto.startNo + pageDto.perPageNum - 1, pageDto.totalCount);
        // 이전/다음 페이지 존재 여부
        pageDto.prev = pageDto.page > 1;
        pageDto.next = pageDto.page < pageDto.totalPage;
    }

    function createPagination() {
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
            sessionStorage.setItem("boardNo", pageNumber)
            pageDto.page = pageNumber
            calculatePageDto(pageDto)
            const href = "/blog/?startNo="+pageDto.startNo+"&endNo="+pageDto.endNo+"&perPageNum="+pageDto.perPageNum+
                "&searchType="+pageDto.searchType+"&searchKeyword="+pageDto.searchKeyword+"&orderBy="+
                pageDto.orderBy+"&order="+pageDto.order;
            window.location.href = href;
        }
        pageLink.href = "#"; // 또는 JavaScript:void(0);
        pageLink.textContent = pageNumber;

        if(isFirst){
            pageLink.className = 'page-link active';
        }else{
            pageLink.className = 'page-link';
        }
        container.appendChild(pageLink);
    }
    createPagination();
    console.log(pageDto)


</script>
<script>
    var nickName = "<%= request.getAttribute("nickName") %>";

    // 'anonymous'일 경우 경고창 표시
    if (nickName === 'anonymous') {
        alert('로그인 해야 가능합니다.');
    }
</script>
</html>