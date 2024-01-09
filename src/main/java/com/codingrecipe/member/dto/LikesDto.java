package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LikesDto {
    private Integer likeId;
    private Integer boardId;
    private String memberNickname;
}
