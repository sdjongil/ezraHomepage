package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.ContentBlocksDto;
import com.codingrecipe.member.dto.ProductsDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ProductRepository{
    public final SqlSessionTemplate sql;
    public List<ProductsDto> findAll() {
        return sql.selectList("Products.findAll");
    }

    public List<ContentBlocksDto> findById(Integer id) {
        return sql.selectList("Products.findById", id);
    }


    public ProductsDto findDetail(Integer id) {
        return sql.selectOne("Products.findDetail", id);

    }
}
