package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.ProductsDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ProductRepository implements IF_ProductRepository{
    public final SqlSessionTemplate sql;
    @Override
    public List<ProductsDto> findAll() {
        List<ProductsDto> productsDtoList = sql.selectList("Products.findAll");
        return sql.selectList("Products.findAll");
    }

    public ProductsDto findById(Long id) {
        return sql.selectOne("Products.findById", id);
    }

}
