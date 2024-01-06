<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
</head>
<body>
<div>
    <jsp:include page="/resources/templates/navbar.html" />
</div>
<div>
    <a href="/board/save">글작성</a>
    <a id="boardListLink">글목록</a>
    <a href="/board/paging">페이징 목록</a>
</div>
</body>
<script>
    let boardNo;
    if(sessionStorage.getItem('boardNo')===null){
        boardNo = '1';
    }else{
        boardNo = sessionStorage.getItem('boardNo');
    }
    let pageDto = {
        startPage: null,
        endPage: null,
        perPageNum: 10,
        page: null,
        totalCount: 41,
        startNo: null,
        endNo: null,
        prev: null,
        next: null,
        searchType: null,
        searchKeyword: null
    };
    settingPage(boardNo)

    function settingPage(boardNo){
        pageDto.page=boardNo
        pageDto.startNo = (boardNo - 1) * pageDto.perPageNum + 1;
        var tempEnd = (Math.ceil(boardNo / pageDto.perPageNum) * pageDto.perPageNum);
        pageDto.startPage = (tempEnd - pageDto.perPageNum) + 1;
        if (tempEnd * pageDto.perPageNum > pageDto.totalCount) {
            pageDto.endPage = Math.ceil(pageDto.totalCount / pageDto.perPageNum);
            if(pageDto.endPage !== boardNo) {
                pageDto.endNo = pageDto.startNo + pageDto.perPageNum - 1;
            } else {
                pageDto.endNo = pageDto.startNo + pageDto.totalCount % pageDto.perPageNum - 1;
            }

        } else {
            pageDto.endPage = tempEnd;
            pageDto.endNo = pageDto.startNo + pageDto.perPageNum - 1;
        }
        pageDto.prev = pageDto.startPage !== 1;
        pageDto.next = pageDto.endPage * pageDto.perPageNum < pageDto.totalCount;
    }
    console.log("startNo: " + pageDto.startNo);
    console.log("endNo: " + pageDto.endNo);
    console.log("startPage: " + pageDto.startPage);
    console.log("endPage: " + pageDto.endPage);



    document.getElementById("boardListLink").addEventListener("click", function(e) {
        e.preventDefault(); // 기본 링크 동작을 막습니다.
        fetch('/board/list', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(pageDto)
        })
            .then(response => response.json())
            .then(data => {
                console.log(data);
                // 서버 응답 후 페이지 이동
                window.location.href = "/board/list";
            })
            .catch(error => console.error('Error:', error));
    });
</script>
</html>