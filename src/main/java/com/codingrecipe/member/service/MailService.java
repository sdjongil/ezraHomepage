package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.MailDto;
import lombok.RequiredArgsConstructor;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Map;
@Service
@RequiredArgsConstructor
public class MailService {
    private final JavaMailSender mailSender;

    public Map<String, Object> send(MailDto mailDto){
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
        try {
            helper.setTo("sdjongil@naver.com");
            helper.setSubject(mailDto.getEmail());
            helper.setText(mailDto.getMessage(), true); // true를 설정하면 HTML을 사용할 수 있음
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        mailSender.send(mimeMessage);
        return null;
    };
}
