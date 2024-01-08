package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FilesDto {
    private String fileName;
    private String boardId;
    private String fileExtension;
}
