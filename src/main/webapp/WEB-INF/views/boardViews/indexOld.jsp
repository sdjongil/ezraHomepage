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
    let boardNoCookie = document.cookie;
    let boardNo = '1';
    let pageDto = {
        startPage: null,
        endPage: null,
        perPageNum: 10,
        page: null,
        totalCount: 36,
        startNo: null,
        endNo: null,
        prev: null,
        next: null,
        searchType: null,
        searchKeyword: null
    };
    if(boardNoCookie === ''){
        let now = new Date();
        now.setTime(now.getTime() + (60 * 60 * 1000)); // 현재 시간에 1시간(60분 * 60초 * 1000밀리초)을 더함
        let expires = now.toUTCString(); // UTC 시간 문자열로 변환
        document.cookie = "boardNo=" + boardNo + "; path=/board; expires=" + expires;
    }else {
        let cookie = boardNoCookie.split("=")
        boardNo = cookie[1];
    }
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

    sessionStorage.setItem('pageDto', JSON.stringify(pageDto));

    // sessionStorage에서 데이터 불러오기
    let savedPageDto = sessionStorage.getItem('pageDto');

    // 문자열을 JavaScript 객체로 변환
    if (savedPageDto) {
        savedPageDto = JSON.parse(savedPageDto);
    } else {
        // 저장된 데이터가 없는 경우의 처리
        console.log('No data found in sessionStorage');
    }

    // 사용 예
    console.log(savedPageDto);


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