package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ContentBlocksDto {
    private Integer blockId;
    private Integer productId;
    private String blockType;
    private String content;
    private Integer blockOrder;
}
