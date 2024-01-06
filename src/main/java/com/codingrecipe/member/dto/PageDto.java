package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;

@Getter
@Setter
@ToString
public class PageDto {
    private Integer page = 1;
    private Integer startNo = 1;
    private Integer endNo = 5;
    private Integer perPageNum = 5;
    private String searchType = "category";
    private String searchKeyword ="%";
    private String orderBy = "boardcreatedtime";
    private String order ="desc";

}




