package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.ContentBlocksDto;
import com.codingrecipe.member.dto.ProductsDto;
import com.codingrecipe.member.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService{
    private final ProductRepository productRepository;

    public List<ProductsDto> findAll() {
        return productRepository.findAll();
    }

    public List<ContentBlocksDto> findById(Integer id) {
        return productRepository.findById(id);
    }

    public ProductsDto findDetail(Integer id) {
        return productRepository.findDetail(id);
    }
}
