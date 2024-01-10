package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class BoardDto {
    private Long id;
    private String boardWriter;
    private String boardTitle;
    private String boardContents;
    private Integer boardHits;
    private Timestamp boardCreatedTime;
    private Integer views;
    private String category;
    private String isFile;
}
