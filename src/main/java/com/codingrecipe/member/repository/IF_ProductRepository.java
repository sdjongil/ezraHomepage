package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.ProductsDto;

import java.util.List;

public interface IF_ProductRepository {
    List<ProductsDto> findAll();
}
