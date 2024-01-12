package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MailDto {
    private String email;
    private String name;
    private String message;
    private String company;
}
