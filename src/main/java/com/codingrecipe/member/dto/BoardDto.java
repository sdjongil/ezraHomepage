package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class BoardDto {
    private Integer boardId;
    private String boardWriter;
    private String boardTitle;
    private String boardContents;
    private Integer boardHits;
    private Timestamp boardCreatedTime;
    private Integer boardViews;
    private String boardCategory;
    private String boardIsFile;
}
