package com.codingrecipe.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductsDto {
    private Long id;
    private String productName;
    private Long productPrice;
    private String productImage;
    private String productMade;
    private String productBrand;
}
