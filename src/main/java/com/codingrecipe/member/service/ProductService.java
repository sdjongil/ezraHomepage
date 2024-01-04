package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.ProductsDto;
import com.codingrecipe.member.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService implements IF_ProductService{
    private final ProductRepository productRepository;

    @Override
    public List<ProductsDto> findAll() {
        List<ProductsDto> productsDtoList = productRepository.findAll();
        return productsDtoList;
    }

    public ProductsDto findById(Long id) {
        return productRepository.findById(id);
    }
}
