package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ViewsDto {
    private Integer viewId;
    private String boardId;
    private String memberNickname;
}
