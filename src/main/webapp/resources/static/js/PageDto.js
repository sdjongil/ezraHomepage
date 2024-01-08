export class PageDto{
    constructor(totalCount) {
        this.startPage = null;        // 현재 페이지 기준 게시판 시작 페이지
        this.endPage = null;          // 현재 페이지 기준 게시판 끝 페이지
        this.perPageNum = 10;         // 한 페이지당 게시물 수
        this.maxPage = 5;             // 최대 표시할 페이지 수
        this.page = 1;                // 현재 페이지
        this.totalCount = totalCount; // 총 게시물 수
        this.totalPage = null;        // 총 게시판 마지막 페이지
        this.startNo = null;          // 현재 목록에서 시작 게시물 id
        this.endNo = null;            // 현재 목록에서 끝 게시물 id
        this.prev = null;             // 이전 페이지 유무
        this.next = null;             // 다음 페이지 유무
        this.searchType = "category"; // 검색 칼럼
        this.orderBy = "boardcreatedtime"; // 정렬 기준
        this.order = "desc";          // 정렬 순서 (오름차순, 내림차순)
        this.searchKeyword = "%";     // 검색 키워드
    }

    calculatePageDto() {
        // 전체 페이지 수 계산
        this.totalPage = Math.ceil(this.totalCount / this.perPageNum);
        // 현재 페이지 주변의 페이지 범위 계산
        let halfWindow = Math.floor(this.maxPage / 2);
        this.startPage = Math.max(1, this.page - halfWindow);
        this.endPage = Math.min(this.startPage + this.maxPage - 1, this.totalPage);
        // 시작 페이지 조정
        if (this.endPage - this.startPage < this.maxPage - 1) {
            this.startPage = Math.max(1, this.endPage - this.maxPage + 1);
        }
        // 현재 목록에서 게시물 ID 범위 계산
        this.startNo = (this.page - 1) * this.perPageNum + 1;
        this.endNo = Math.min(this.startNo + this.perPageNum - 1, this.totalCount);
        // 이전/다음 페이지 존재 여부
        this.prev = this.page > 1;
        this.next = this.page < this.totalPage;
    }

}
