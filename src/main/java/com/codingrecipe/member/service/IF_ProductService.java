package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.ProductsDto;

import java.util.List;

public interface IF_ProductService {
    List<ProductsDto> findAll();
}
