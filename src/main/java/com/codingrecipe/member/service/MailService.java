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

    public boolean send(MailDto mailDto){
        boolean sendOk = false;
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
        try {
            helper.setTo("sdjongil@naver.com");
            helper.setSubject("name : "+mailDto.getName()+"/ company : "+mailDto.getCompany());
            helper.setText("reply : "+mailDto.getEmail()+
                    "/ content : "+mailDto.getMessage(), false); // true를 설정하면 HTML을 사용할 수 있음
            mailSender.send(mimeMessage);
            sendOk = true;
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return sendOk;
    };
}
