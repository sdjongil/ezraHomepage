package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter
public class PageDto {
    private Integer startPage;
    private Integer endPage;
    private Integer perPageNum = 10;
    private Integer page;
    private Integer totalCount;
    private Integer startNo;
    private Integer endNo;
    private boolean prev;
    private boolean next;
    private String searchType;
    private String searchKeyword;

    private void calcPage() {
        startNo = (this.page - 1) * perPageNum +1;
        int tempEnd = (int) (Math.ceil(page / (double) this.perPageNum) * this.perPageNum);
        this.startPage = (tempEnd - this.perPageNum) + 1;
        if (tempEnd * this.perPageNum > this.totalCount) {
            // 클릭한 page번호로 계산된 게시물수가 실제게시물개수 totalCount 클때
            this.endPage = (int) Math.ceil(this.totalCount / (double) this.perPageNum);
            //this.endNo = startNo + this.perPageNum - 1;
            if(endPage!=page) {
                this.endNo = startNo + this.perPageNum - 1;
            }else {
                this.endNo = startNo + this.totalCount % 10 - 1;
            }
        } else {
            // 클릭한 page번호로 계산된 게시물수가 실제게시물개수 totalCount 작을때
            this.endPage = tempEnd;
            this.endNo = startNo + this.perPageNum - 1;
            //this.endNo = startNo + this.totalCount % 10 - 1;
        }

        this.prev = this.startPage != 1;// 시작페이지 1보다 크면 무조건 이전 페이지가 있음. true
        this.next = this.endPage * this.perPageNum < this.totalCount;
        // 클릭한 page번호로 계산된 게시물수가 실제 게시물 개수보다 작다면 다음페이지가 있음. true
    }
    public void prt() {
        System.out.println("StartNo : "+startNo);
        System.out.println("endNo : "+endNo);
        System.out.println("startPage : "+startPage);
        System.out.println("endPage : "+endPage);
    }
}




