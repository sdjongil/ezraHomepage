package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.InquiriesDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class InquiriesRepository {
    public final SqlSessionTemplate sql;

    public List<InquiriesDto> findByProductId(Long id) {
        List<InquiriesDto> inquiriesDtos = sql.selectList("Inquiries.findByProductId", id);
        return inquiriesDtos;

    }

    public boolean save(InquiriesDto inquiriesDto) {
        int result = sql.insert("Inquiries.save", inquiriesDto);
        if(result>0){
            return true;
        }else {
            return false;
        }
    }

    public void delete(Long inquiryId) {
        sql.delete("Inquiries.delete", inquiryId);
    }

    public void update(InquiriesDto inquiriesDto) {
        sql.update("Inquiries.update", inquiriesDto);
    }
}
