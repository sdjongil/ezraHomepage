package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.InquiriesDto;
import com.codingrecipe.member.repository.InquiriesRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class InquiriesService {
    public final InquiriesRepository inquiriesRepository;

    public List<InquiriesDto> findByProductId(Long id) {
        return inquiriesRepository.findByProductId(id);
    }

    public boolean save(InquiriesDto inquiriesDto) {
        if(inquiriesRepository.save(inquiriesDto)){
            return true;
        }else {
            return false;
        }

    }

    public void delete(Long inquiryId) {
        inquiriesRepository.delete(inquiryId);
    }

    public void update(InquiriesDto inquiriesDto) {
        inquiriesRepository.update(inquiriesDto);
    }
}
