package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;
@Getter
@Setter
@ToString
public class InquiriesDto {
    private Long inquiryId;
    private String productId;
    private String userId;
    private String inquiryContent;
    private Timestamp inquiryDate;
}
