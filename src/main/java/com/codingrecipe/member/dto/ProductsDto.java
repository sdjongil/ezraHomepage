package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductsDto {
    private Integer productId;
    private String name;
    private Integer price;
    private String Image;
    private String description;
    private String stock;
}
